��    N      �  k   �      �  1   �  2   �  '     ,   6  �   c  
        "     &     .     ;     H  9   M     �     �     �     �     �     �     �      	     	     /	     I	     W	     \	     s	     �	  Z   �	  �   �	  
   �
     �
  	   �
     �
     �
  S   �
                       .   0     _  y   p     �  %         &     D     Q  �   Z     &      +  	   L     V     _     |     �  4   �  A   �  2     F   F  7   �     �     �     �     �  ,     &   <  7   c  "   �  X   �               '     =  N   F     �  �   �  s  8  �  �  K   q  L   �  *   
  -   5  �   c  	   )     3     A     I     V     d  L   j     �  $   �     �     �  	     	   $     .     L     i  &   }     �     �     �     �     �  ^     �   e                     (     *  k   3     �     �     �     �  =   �       �        �  ,   �  .        5     B  �   H  	     )      
   J     U  "   a     �  	   �  :   �  P   �  4   4  N   i  N   �       !        .  "   N  /   q  7   �  C   �  <     h   Z     �     �     �     �  T         e   �   �   �  !     F           #      1   ?   7       E       M      2   0         >      $                  N   3   I   :   G   5             <   (       /       B   ,             ;           D              )       '              -             4      *      	   8                 A      +   9   .   %          6   !         J   
      L      =       C           &   H       @           K                       "    %(count)d document link queued for email delivery %(count)d document links queued for email delivery %(email)s is not a valid email address. A short text describing the mailing profile. Address used in the "Bcc" header when sending the email. Can be multiple addresses separated by comma or semicolon. A template can be used to reference properties of the document. Attachment BCC Backend Backend data Backend path Body Body of the email to send. Can be a string or a template. CC Create a "%s" mailing profile Create a mailing profile Create mailing profile Default Delete Delete a mailing profile Delete mailing profile: %s Django SMTP backend Django file based backend Document file Edit Edit a mailing profile Edit mailing profile: %s Email address Email address of the recipient. Can be multiple addresses separated by comma or semicolon. Email address of the recipient. Can be multiple addresses separated by comma or semicolon. A template can be used to reference properties of the document. Email sent Enabled File path From Host If default, this mailing profile will be pre-selected on the document mailing form. Label Mailer Mailing Mailing profile Mailing profile to use when sending the email. Mailing profiles Mailing profiles are email configurations. Mailing profiles allow sending documents as attachments or as links via email. Mailing profiles list New mailing profile backend selection No mailing profiles available Null backend Password Password to use for the SMTP server. This setting is used in conjunction with the username when authenticating to the SMTP server. If either of these settings is empty, authentication won't be attempted. Port Port to use for the SMTP server. Recipient Reply to Send document link via email Send document via email Subject Subject of the email. Can be a string or a template. Template for the document email form body text. Can include HTML. Template for the document email form subject line. Template for the document link email form body text. Can include HTML. Template for the document link email form subject line. Test Test email from Mayan EDMS Test email sent. Test mailing profile: %s The dotted Python path to the backend class. The driver to use when sending emails. The email profile that will be used to send this email. The host to use for sending email. The sender's address. Some system will refuse to send messages if this value is not set. Use SSL Use TLS Use a mailing profile Username Username to use for the SMTP server. If empty, authentication won't attempted. View a mailing profile Whether to use a TLS (secure) connection when talking to the SMTP server. This is used for explicit TLS connections, generally on port 587. Whether to use an implicit TLS (secure) connection when talking to the SMTP server. In most email documentation this type of TLS connection is referred to as SSL. It is generally used on port 465. If you are experiencing problems, see the explicit TLS setting "Use TLS". Note that "Use TLS" and "Use SSL" are mutually exclusive, so only set one of those settings to True. Project-Id-Version: Mayan EDMS
Report-Msgid-Bugs-To: 
PO-Revision-Date: 2022-02-03 10:13+0000
Last-Translator: Michal Švábík <snadno@lehce.cz>, 2022
Language-Team: Czech (https://www.transifex.com/rosarior/teams/13584/cs/)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Language: cs
Plural-Forms: nplurals=4; plural=(n == 1 && n % 1 == 0) ? 0 : (n >= 2 && n <= 4 && n % 1 == 0) ? 1: (n % 1 != 0 ) ? 2 : 3;
 Odkaz na dokument %(count)d zařazený do fronty pro doručování e-mailů Odkazy na dokument %(count)d zařazené do fronty pro doručování e-mailů %(email)s není platná e-mailová adresa. Krátký text popisující poštovní profil. Adresa použitá v hlavičce „Skrytá kopie“ při odesílání e -mailu. Může být více adres oddělených čárkou nebo středníkem. K odkazu na vlastnosti dokumentu lze použít šablonu. Příloha skrytá kopie Backend Backend data Backend cesta Tělo Text e-mailu, který chcete odeslat. Může to být řetězec nebo šablona. kopie Vytvořit poštovní profil „%s“ Vytvořte poštovní profil Vytvořit poštovní profil Výchozí Odstranit Odstra%n poštovního profilu Smazat poštovní profil: %s Backend SMTP Django Backend založený na souborech Django Soubor dokumentu Upravit Upravit poštovní profil Upravit poštovní profil: %s Emailová adresa E-mailová adresa příjemce. Může být více adres oddělených čárkou nebo středníkem. E-mailová adresa příjemce. Může zde být více adres oddělených čárkou nebo středníkem. Šablonu lze použít k odkazu na vlastnosti dokumentu. Email odeslán Povoleno Cesta k souboru Z Hostitel Pokud je výchozí, bude tento poštovní profil předem vybrán ve formuláři pro zasílání dokumentů. Jmenovka Mailer Mailing Poštovní profil Poštovní profil, který se použije k odesílání e-mailu. Poštovní profily Poštovní profily jsou e-mailové konfigurace. Poštovní profily umožňují odesílání dokumentů jako přílohy nebo jako odkazy prostřednictvím e-mailu. Seznam poštovních profilů Výběr backend nového poštovního profilu K dispozici nejsou žádné poštovní profily Null backend Heslo Heslo pro server SMTP. Toto nastavení se používá ve spojení s uživatelským jménem při autentizaci na server SMTP. Pokud je některé z těchto nastavení prázdné, nebude ověřování provedeno. Přístav Port, který se použije pro server SMTP. Příjemce Odpovědět Odeslat odkaz na dokument e-mailem Odeslat dokument e-mailem Předmět Předmět e-mailu. Může to být řetězec nebo šablona. Šablona pro text textu formuláře elektronické pošty. Může obsahovat HTML. Šablona pro řádek předmětu e-mailu formuláře. Šablona textového textu odkazu na e-mail formuláře. Může obsahovat HTML. Šablona pro řádek s předmětem odkazu na dokument e-mailového formuláře Test Vyzkoušejte e-mail od Mayan EDMS Testovací e-mail byl odeslán. Vyzkoušejte poštovní profil: %s Tečkovaná cesta Pythonu ke třídě backendu. Ovladač, který se použije pro odesílání e-mailů. E-mailový profil, který bude použit k odeslání tohoto e-mailu. Hostitel, který má být použit pro odesílání e-mailů. Adresa odesílatele. Pokud není tato hodnota nastavena, některé systémy odmítnou odesílat zprávy. Použijte SSL Použijte TLS Použijte poštovní profil Uživatelské jméno Uživatelské jméno pro server SMTP. Pokud je prázdné, o ověření se nepokusí. Zobrazit poštovní profil Pokud se má při komunikaci se serverem SMTP používat (zabezpečené) připojení TLS. Používá se pro explicitní připojení TLS, obvykle na portu 587. Pokud se použije implicitní TLS (zabezpečené) připojení při rozhovoru se serverem SMTP. Ve většině e-mailové dokumentace se tento typ připojení TLS označuje jako SSL. Obvykle se používá na portu 465. Pokud máte problémy, podívejte se na explicitní nastavení TLS „Use TLS“. Upozorňujeme, že možnosti „Použít TLS“ a „Použít SSL“ se vzájemně vylučují, takže pouze jedno z těchto nastavení nastavte na hodnotu TRUE. 