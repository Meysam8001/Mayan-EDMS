from django.utils.translation import ugettext_lazy as _

from mayan.apps.rest_api import serializers
from mayan.apps.rest_api.relations import (
    FilteredPrimaryKeyRelatedField, MultiKwargHyperlinkedIdentityField
)

from ..models import WorkflowState, WorkflowStateEscalation

from .workflow_template_state_serializers import WorkflowTemplateStateSerializer
from .workflow_template_transition_serializers import WorkflowTemplateTransitionSerializer


class WorkflowTemplateStateEscalationSerializer(serializers.HyperlinkedModelSerializer):
    state = WorkflowTemplateStateSerializer(read_only=True)
    transition = WorkflowTemplateTransitionSerializer(read_only=True)
    url = MultiKwargHyperlinkedIdentityField(
        view_kwargs=(
            {
                'lookup_field': 'state__workflow_id',
                'lookup_url_kwarg': 'workflow_template_id',
            },
            {
                'lookup_field': 'state_id',
                'lookup_url_kwarg': 'workflow_template_state_id',
            },
            {
                'lookup_field': 'pk',
                'lookup_url_kwarg': 'workflow_template_state_escalation_id',
            }
        ),
        view_name='rest_api:workflow-template-state-escalation-detail'
    )
    workflow_template_state_id = serializers.IntegerField(
        read_only=True, source='state_id'
    )
    workflow_template_state_url = MultiKwargHyperlinkedIdentityField(
        view_kwargs=(
            {
                'lookup_field': 'state__workflow_id',
                'lookup_url_kwarg': 'workflow_template_id',
            },
            {
                'lookup_field': 'state_id',
                'lookup_url_kwarg': 'workflow_template_state_id',
            }
        ),
        view_name='rest_api:workflow-template-state-detail'
    )
    # ~ workflow_template_transition_id = serializers.IntegerField(
        # ~ read_only=True, source='transition_id'
    # ~ )
    workflow_template_transition_id = FilteredPrimaryKeyRelatedField(
        help_text=_(
            'Primary key of the workflow template transition to be added.'
        ), source_queryset_method='get_workflow_template_transition_queryset',
        write_only=True
    )
    workflow_template_transition_url = MultiKwargHyperlinkedIdentityField(
        view_kwargs=(
            {
                'lookup_field': 'transition__workflow_id',
                'lookup_url_kwarg': 'workflow_template_id',
            },
            {
                'lookup_field': 'transition_id',
                'lookup_url_kwarg': 'workflow_template_transition_id',
            }
        ),
        view_name='rest_api:workflow-template-transition-detail'
    )

    class Meta:
        fields = (
            'amount', 'comment', 'condition', 'enabled', 'id',
            'priority',
            'state', 'transition',
            'url', 'unit', 'workflow_template_state_id',
            'workflow_template_state_url', 'workflow_template_transition_id',
            'workflow_template_transition_url'
        )
        model = WorkflowStateEscalation
        read_only_fields = (
            'id',
            'state', 'transition',

            'url', 'workflow_template_state_id',
            'workflow_template_state_url', #'workflow_template_transition_id',
            'workflow_template_transition_url'
        )

    def create(self, validated_data):
        validated_data['transition'] = validated_data.pop(
            'workflow_template_state_id'
        )

        return super().create(
            validated_data=validated_data
        )

    def get_workflow_template_transition_queryset(self):
        return self.context['external_object'].transitions.all()

    def update(self, instance, validated_data):
        validated_data['transition'] = validated_data.pop(
            'workflow_template_state_id'
        )

        return super().update(
            instance=instance, validated_data=validated_data
        )
