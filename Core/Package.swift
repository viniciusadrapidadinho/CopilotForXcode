0// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
executar arquivo :[swift bluid]
clonar sotreger clone arquivo executardado ###########___[ abrir] [abrir execucacão][finrun][swifit run]abara entra e fin stoprer e aber up ump um e a line aline online a on 
import Foundation
import PackageDescription
                         Manuel de l'utilisateur
                             ~~~~~~~~~~~~~
                        Version console RAR 7.11
                    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

                   =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
                    Bienvenue dans l'archiveur RAR !
                   -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

 Introduction
 ~~~~~~~~~~~~

  RAR est une application de console permettant de gérer des fichiers d'archives 
  en mode ligne de commande. RAR offre la compression, le chiffrement, 
  la restauration de données et de nombreuses autres fonctions décrites dans ce manuel.
  
  RAR ne prend en charge que les archives au format RAR, dont l'extension 
  est .rar par défaut. ZIP et les autres formats ne sont pas pris en charge. 
  Même si vous spécifiez l'extension .zip lors de la création de l'archive, 
  celle-ci sera au format RAR. Les utilisateurs de Windows peuvent installer 
  WinRAR qui prend en charge plusieurs types d'archives y compris RAR et ZIP.
  
  WinRAR propose une interface utilisateur graphique et le mode ligne de commande. 
  Bien que la console RAR et l'interface graphique WinRAR aient la même syntaxe 
  de ligne de commande, il existe quelques différences. Il est donc recommandé 
  d'utiliser ce fichier rar.txt pour la console RAR (rar.exe en cas de 
  version Windows) et le fichier d'aide winrar.chm pour l'interface graphique 
  de WinRAR (winrar.exe). 


 Fichier de configuration
 ~~~~~~~~~~~~~~~~~~~~~~~~

  RAR et UnRAR pour Unix lisent les informations de configuration dans le fichier 
  ".rarrc" dans le répertoire personnel de l'utilisateur (stockées dans 
  la variable d'environnement PERSONNEL) ou autre.

  RAR et UnRAR pour Windows lisent les informations de configuration du fichier 
  "rar.ini", placé dans le même répertoire que le fichier "rar.exe".

  Ce fichier peut contenir la chaîne de caractères suivante :

  Paramètres=les paramètres RAR, sont séparés par les espaces

  Par exemple :

  paramètres=-m5 -s

  Il est possible de spécifier des commutateurs séparés pour
  des commandes RAR individuelles à l'aide de la syntaxe suivante :

  commutateurs_<commande>=<commutateurs RAR séparés par des espaces>

  Par exemple :

  commutateurs_a=-m5 -s
  commutateurs_x=-o+

 Variable d'environnement
 ~~~~~~~~~~~~~~~~~~~~~~~~

    Des paramètres par défaut peuvent être ajoutés à la ligne de commande 
    RAR pour établir une variable d'environnement "RARINISWITCHES".

    Par exemple, sous UNIX, les lignes suivantes peuvent être ajoutées à 
    votre profil :

      RARINISWITCHES='-s -md1024'
      export RARINISWITCHES

    RAR utilisera cette chaîne de caractères comme paramètres par défaut 
    dans la ligne de commande et créera des archives "Solide" avec une 
    taille pour le dictionnaire jusqu'à 1024 Mo.

    RAR traite les options par priorité comme suit :

     RAR traite les options par priorité comme suit :

      paramètres de la ligne de commande				plus forte priorité
      paramètres dans la variable RARINISWITCHES			faible priorité
      paramètres sauvegardés dans le fichier de configuration		plus faible priorité                                         



 Fichier journal
 ~~~~~~~~~~~~~~~

  Si le paramètre "-ilog" est spécifié dans la ligne de commande ou dans 
  le fichier de configuration, RAR stockera des messages d'information, 
  concernant les erreurs rencontrées lors du traitement des archives, 
  dans un fichier journal. Sous Unix, ce fichier est appelé ".rarlog" et 
  est placé dans le dossier local de l'utilisateur. Sous Windows, 
  il est appelé "rar.log" et est placé dans le même répertoire que le 
  fichier "rar.exe".


 La liste organisée des fichiers pour l'archivage solide - "rarfiles.lst"
 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

  Le fichier "rarfiles.lst" contient une liste de fichiers utilisateur 
  organisée qui indique à RAR dans quel ordre, ajouter les fichiers à une archive 
  "Solide". Elle peut contenir des noms de fichiers, des jokers et l'entrée 
  spéciale - "$défaut". L'entrée par défaut définit la place dans la liste 
  organisée pour les fichiers non liés avec d'autres entrées dans ce 
  fichier. Un commentaire suit le caractère ";". Exemple : 
  "rar.log; Fichier journal RAR".

  Sous Windows, ce fichier peut être placé dans le même répertoire que RAR,
  sous Unix - dans le dossier local de l'utilisateur ou autre.

  Conseils pour améliorer la compression et la vitesse de l'opération :

  - les fichiers similaires peuvent être mis ensemble dans l'archive;
  - les fichiers souvent utilisés peuvent être placés au début.

  Normalement les masques qui sont placés au début de la liste ont une 
  priorité plus élevée, mais il y a une exception à cette règle. Si le 
  fichier 'rarfiles.lst' contient deux masques, que tous les fichiers 
  sélectionnés par un masque, sont également sélectionnés par un autre 
  masque, le masque qui sera le plus précis aura une priorité plus élevée 
  indépendamment de sa position dans la liste. Par exemple, pour les 
  masques '*.cpp' et 'f*.cpp', 'f*.cpp' aura une priorité plus élevée, 
  ainsi la position de 'filename.cpp', sera sélectionnée par 'f*.cpp' et 
  non par '*.cpp'.


 Syntaxe pour la ligne de commande de RAR
 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

 Syntaxe

    RAR <commande>  [ -<paramètres> ]  <archive>  [ <@listefichiers...> ]
        [ <fichiers...> ]  [ <chemin_pour_extraire\> ]

 Description

    Les options de la ligne de commande ("<commande>" et  "-<paramètres>") 
    donnent le contrôle pour créer et gérer des archives avec RAR. La 
    commande est une chaîne de caractères (ou une simple lettre) qui donne 
    l'ordre à RAR d'exécuter l'action correspondante. Les paramètres sont 
    spécifiés pour définir le comportement de RAR pour exécuter l'action. 
    Les autres paramètres sont  : "<archive>" le nom de l'archive, 
    "<fichiers...>" le nom des fichiers à archiver ou extraire de l'archive 
    et "<chemin_pour_extraire\>" spécifie le répertoire dans lequel les 
    fichiers extraits doivent être placés. Si ce répertoire n'existe pas, 
    il sera créé.

    <@listefichiers...> est un fichier texte (brut) qui contient les 
    noms des fichiers à traiter. Les noms de fichiers doivent commencer 
    à la première colonne (sans espace ou marge). Vous pouvez insérer 
    un commentaire après les noms des fichiers en commençant par les
    deux caractères "//" suivis du commentaire. Par exemple, vous pouvez
    créer un fichier "backup.lst" contenant les chaînes suivantes :  

    c:\work\doc\*.txt   //sauvegarde des documents texte
    c:\work\image\*.bmp  //sauvegarde des images
    c:\work\misc

   et lancer :

       rar a backup @backup.lst

    Si vous souhaitez lire les noms de fichiers depuis l'entrée standard, 
    spécifier pour "<@listefichiers...>" uniquement "@" sans rien d'autre.

    Par défaut, la console RAR utilise l'encodage simple octet dans la liste 
    des fichiers. Il est toutefois possible de la redéfinir à l'aide du 
    commutateur -sc<charset>l.

    Vous pouvez spécifier des noms de fichiers habituels et des noms de 
    fichiers de liste dans la même ligne de commande. Si aucun fichier ni 
    aucun nom de fichier de liste n'est spécifié, alors ce sera le masque 
    "*. *" qui sera utilisé et RAR traitera tous les fichiers

    Sous Unix, vous devez inclure les paramètres de ligne de commande RAR 
    contenant des caractères génériques entre guillemets simples ou doubles
    pour éviter que l'environnement Unix ne les étende. Par exemple, cette 
    commande extraira les fichiers *.asm de toutes les archives *.rar dans
    le dossier actuel :

       rar e '*.rar' '*.asm'


    Les commandes :

    a       Ajouter des fichiers à une archive.

            Exemple :

            créer ou mettre à jour une archive "mon_archive" existante, en 
            ajoutant tous les fichiers du répertoire courant

            rar a mon_archive


    c      Ajouter un commentaire d'archive. Les commentaires d'affichent 
           pendant que l'archive est en cours de traitement. Le commentaire 
           est limité à 256 Ko

            Exemples :

            rar c distrib.rar

            Des commentaires peuvent être ajoutés à partir d'un fichier en utilisant le paramètre -z[fichier].
            La commande suivante adds ajoute un commentaire à partir du fichier info.txt :

            rar c -zinfo.txt (simulation)


    ch      Changer les paramètres de l'archive.

            Cette commande peut être utiliser avec la plupart des paramètres 
            de modification d'archives pour modifier des paramètres d'archives. 
            Particulièrement utile pour les commutateurs -cl, -cu, -tl, qui 
            ne sont pas consacrés à une commande.

            Elle ne permet pas de recompresser, chiffrer ou déchiffrer les 
            données d'archives et elle ne permet pas de fusionner ou de créer des volumes. 
            Si aucun commutateur n'est défini, la commande 'ch' copie les 
            données d'archives sans modification.

            Quand elle est utilisée avec le commutateur -amr pour restaurer le nom et l'heure
            de l'archive sauvegardée, le sautres commutateurs de modification d'archive sont ignorés.

            Exemple :

            Placer l'heure de l'archivage pour la classer plus tard :

            rar ch -tl files.rar


    cw    Insérer un commentaire d'archive dans le fichier spécifié.

            Si utilisé avec le paramètre -fcu, le format du fichier de sortie 
            est au format Unicode endian. Autrement c'est de l'ASCII.

            Exemples :

            1) rar cw arc commentaire.txt

            2) rar cw -fcu arc unicode.txt


    d      Supprimer des fichiers d'une archive. Si cette commande supprime tous les fichiers 
           dans l'archive, l'archive vide est à son tour supprimée.


    e      Extraire les fichiers sans les chemins archivés.

           Extraire les fichiers en excluant le chemin de sorte que tous les fichiers
           soient créés dans le même répertoire.
        
           Utilisez la commande 'x' pour extraire les chemins complets.

           Exemple :
           
           rar e -or html.rar *.css css\
 
           extrait tous les fichiers *.css du fichier html.rar vers le dossier 'css'
           en excluant les chemins. Renomme les fichiers extraits automatiquement
           lorsque plusieurs fichiers portent le même nom.


    f      Actualiser les fichiers dans l'archive. Mettre à jour les 
           fichiers antérieurs à ceux qui seront ajoutés. Cette commande 
           n'ajoutera pas de nouveaux fichiers à l'archive.

    I[i|c|h|t]=<chaîne>
         Rechercher une chaîne dans les archives.
 
         Supporte les paramètres optionnels suivants :

          i 	- Rechercher sans respecter la casse (par défaut);

          c 	- Rechercher en respectant la casse;

          h 	- Rechercher une chaîne hexadecimale;

          t 	- Utiliser les tables de caractères ANSI, UTF-8, UTF-16 et OEM 
                  (Windows uniquement);

         Si aucun paramètre n'est spécifié, il est possible d'utiliser la syntaxe simplifiée 
         i<chaîne> à la place de i=<chaîne>.

         Vous pouvez spécifier le modificateur 't' avec d'autres paramètres, par exemple, 
         ict=chaîne, exécute une recherche sensible à la casse en utilisant toutes les tables 
         de caractères disponibles.

         Exemples :

         1) RAR "ic=premier niveau" -r c:\*.rar *.txt

         Exécute la recherche sensible à la casse de la chaîne "premier niveau" dans les 
         fichiers "*.txt" des archives "*.rar" sur le disque dur c:

         2) rar ih= f0e0aeaeab2d83e3a9 -r e:\texts\*.rar

         Recherche la chaîne hexadécimale f0 e0 ae ae ab 2d 83 e3 a9 dans les archives 
         "*.rar" du dossier e:\texts.


    k       Verrouiller l'archive. Toutes commandes ultérieures pour 
            modifier l'archive seront ignorées. 
            WinRAR ne peut pas modifier les archives verrouillée, ce qui permet 
            d'empêcher leur modification accidentelle par WinRAR.
            Cette protection peut s'avérer particulièrement utile pour les commandes 
            WinRAR traitant des archives en groupes.
            Cette commande ne permet pas d'empêcher la modification intentionnelle par des tiers 
            ou par d'autres outils.
            Elle met en œuvre une mesure de protection uniquement contre les modifications 
            de données accidentelles par WinRAR.

            Exemple :

            rar k finale.rar

    l[t[a],b]
            Répertorie le contenu des archives [technique [tout], basique].
    
            la commande 'l' répertorie les attributs des fichiers, la taille, la date,
            l'heure et le nom, un fichier par ligne. Si le fichier est chiffré,
            la ligne commence par le caractère '*'.

            'lt' affiche les informations détaillées du fichier en mode multiligne.
            Ces informations incluent la valeur de la somme de contrôle du fichier, le système d'exploitation,
            les options de compression et d'autres paramètres.

            'lta' offre des informations détaillées sur les fichiers
            et sur les en-têtes de service comme les flux NTFS
            ou les données de sécurité des fichiers.

            'lb' répertorie les noms basiques avec le chemin, un par ligne,
            sans aucune autre information.

            Vous pouvez utiliser le commutateur -v pour répertorier le contenu de tous
            les volumes : rar l -v vol.part1.rar

            Les commandes 'lt', 'lta' et 'lb' sont les équivalents de 'vt', 'vta'
            et 'vb'.




    m[f]   Déplacer vers une archive [fichiers seulement]. Déplacer les 
           répertoires et les fichiers vers une archive, une fois archivés, 
           les fichiers et répertoires sources seront supprimés. Les 
           répertoires ne seront pas supprimés si le modificateur "f" est 
           utilisé et que le paramètre "-ed" (Ne pas ajouter les 
           répertoires vides) soit ou pas appliqué.


    p      Imprimer un fichier en utilisant la sortie standard.

            Envoyer les données de fichiers décompressés dans stdout. 
            Les messages d'information sont supprimés avec cette commande.1
            Ils ne sont donc pas mélangés avec les données des fichiers.


    r      Réparer l'archive. La réparation d'une archive s'effectue en 
           deux étapes. Tout d'abord, l'enregistrement de restauration pour 
           l'archive endommagée est recherchée (consulter la description de 
           la commande "rr"'). Si l'archive contient l'enregistrement de 
           restauration ajouté précédemment et si la zone de données endommagées 
           est continue et plus petite que la taille du code de correction 
           d'erreurs de l'enregistrement de restauration, les chances de 
           reconstruction sont élevées. Lorsque cette phase est terminée, une 
           nouvelle archive sera créée sous le nom "fixed.arcname.rar", 
           où 'arcname' est le nom de l'archive d'origine endommagée.

           Si une archive détériorée ne contient pas d'enregistrement de 
           restauration ou si l'archive n'est pas complètement restaurée en 
           raison de dégâts sérieux, une deuxième phase s'exécutera. 
           Pendant cette phase, uniquement la structure de l'archive est 
           reconstruite et il est possible de restaurer des fichiers qui 
           ont échoué au contrôle CRC (somme de contrôle). Il est encore 
           possible de restaurer des fichiers de l'archive qui ne sont pas 
           endommagés et qui étaient inaccessibles auparavant en raison de 
           dégâts à la structure de l'archive. C'est principalement utile 
           pour les archives qui ne sont pas du type "Solide". Cette étape
           n'est jamais efficace pour les archives dont l'en-tête est chiffré.
           Un enregistrement de restauration est nécessaire pour les réparer.

           Lorsque la deuxième phase est terminée, l'archive reconstruite 
           sera sauvegardée sous le nom "rebuilt.arcname.rar", où 'arcname'
           est le nom d'origine de l'archive.

           Par défaut, les archives réparées sont créées dans le dossier 
           en cours, mais vous pouvez ajouter un aramètre destpath\ facultatif 
           pour spécifier un autre dossier de destination.

           Exemple:

           rar r bogue.rar c:\fixed\

	   réparrer buggy.rar et placer le résultat dans le dossier 'c:\réparé'


    rc     Reconstruire les volumes manquants ou endommagés en utilisant les volumes de 
           restauration (fichiers ".rev"). Vous devez spécifier un nom de 
           volume .rar ou . rev en tant que nom de l'archive, 

           Exemple : 
           rar rc sauvegarde.part03.rar

           Consulter la description de la commande "rv" pour des 
           informations sur les volumes de restauration.



    rn     Renommer les fichiers archivés.

           La syntaxe de cette commande est :

           rar rn <nomarc> <nomsrc1> <nomdest1> … <nomsrcN> <nomdestN>

           Par exemple, la commande suivante :

           rar rn data.rar readme.txt readme.bak info.txt info.bak

           Renomme readme.txt en readme.bak et info.txt en info.bak dans 
           l'archive data.rar.

           Les jokers sont permis pour les noms source et destination, 
           utilisés pour transformer simplement des extensions de 
           fichiers. Par exemple :

           rar rn data.rar *.txt *.bak

           renomme tous les fichiers "*.txt" en "*.bak".

           RAR ne vérifie pas que le nom du fichier de destination est 
           déjà présent dans l'archive, vous devez faire attention à 
           éviter les noms dupliqués. C'est particulièrement important 
           en utilisant les jokers. Une telle commande est potentiellement 
           dangereuse, car un joker mal utilisé peut corrompre tous les 
           noms de fichiers archivés.




    rr[N]   Ajouter un enregistrement de données de restauration.


            Un enregistrement de restauration comprend une zone de données
            facultatives ajoutées à l'archive et renfermant des codes
            de correction d'erreurs (nommés codes Reed-Solomon) dans les archives
            au format RAR 5.0. Bien qu'ils augmente la taille de l'archive, ils permettent
            de récupérer les fichiers archivés en cas de défaillance du disque ou 
            de perte de données d'autres genre, à condition que les dommages 
            ne soient pas trop importants. Cette restauration peut être réalisée
            via la commande de réparation "R".

	    Le paramètre facultatif 'N' définit la taille de l'enregistrement de restauration
            en pourcentage de la taille de l'archive. S'il est omis, 3 % est supposé. 
            La taille maximale d'enregistrement de restauration autorisée est de 1000 %. 

            Les grands enregistrements de restauration sont traités plus lentement lors 
            de la création et de la réparation. En raison du traitement des données de service,
            la taille réelle de l'enregistrement de restauration obtenu ne correspond que 
            partiellement au pourcentage défini par l'utilisateur et la différence est plus 
            importante pour les petites archives.
            Dans le cas d'un seul dommage continu, il est généralement possible de restaurer 
            un peu moins de données que la taille de l'enregistrement de restauration. 
            La taille des données récupérables peut être inférieure en présence de nombreux dommages.
            Si l'enregistrement de récupération est partiellement dégradé, ses données valides 
            restantes peuvent toujours être utilisées pour réparer les fichiers. 
            
            La commande de réparation ne corrige pas les blocs endommagés dans l'enregistrement 
            de récupération lui-même, seules les données du fichier sont corrigées. 
            Après une réparation réussie de l'archive, vous devrez peut-être créer un nouvel 
            enregistrement de récupération pour les fichiers récupérés.

            Bien que l'enregistrement de restauration améliore les chances de réparation
            d'archives endommagées, il ne garantit pas le succès de l'opération.
            Vous pouvez combiner la fonction d'enregistrement de restauration et
            la sauvegarde sur plusieurs supports pour les données importantes.            

            Exemple :

            rar rr5 nom_archive

            Ajouter un enregistrement de restauration à l'archive images en définissant 
            sa taille à 5% de la taille totale de l'archive WinRAR rr5p images
           


    rv[N]   Créer des volumes de restauration (fichiers ".rev"), qui 
            peuvent être utilisés ultérieurement pour reconstruire des 
            fichiers manquants ou endommagés dans l'ensemble des volumes. Cette commande 
            n'a de sens que pour les archives multi-volumes et vous devez 
            spécifier un nom pour le premier volume de l'ensemble qui sera 
            le nom de l'archive. Par exemple :

            rar rv3 data.part01.rar

            Ce dispositif peut être utile pour des sauvegardes ou, par 
            exemple, lorsque vous avez placé des archives multi-volumes 
            sur un forum et une partie des abonnés n'ont pas reçu certains 
            fichiers. Le fait de placer les volumes de restauration à la 
            place des volumes habituels peut éviter ce problème.

            Chaque volume de restauration peut reconstruire un volume RAR 
            manquant. Par exemple, si vous avez 30 volumes et 3 volumes de 
            restauration pour des volumes manquants ou endommagés, vous pouvez 
            reconstruire ces 3 volumes absents. Si le nombre de fichiers 
            avec l'extension ".rev" est inférieur au nombre de volumes 
            absents, la reconstruction est impossible. Le nombre total de 
            volumes de restauration ne doit pas excéder 255 pour RAR 4.x et 65 535 pour RAR 5.0.

            Les volumes d'origine RAR ne doivent pas être modifiés après 
            avoir créé des volumes de restauration. L'algorithme de restauration 
            utilise des données stockées dans des fichiers REV et dans les volumes 
            RAR pour reconstruire les volumes RAR absents. Si vous modifiez les 
            volumes RAR, par exemple, les verrouiller, après avoir créé les fichiers 
            REV, la procédure de restauration échouera.

            Outre la récupération des données, les volumes de restauration 
            RAR 5.0 stockent également les informations de service telles 
            que les sommes de contrôle des fichiers RAR protégés. Ils sont 
            donc légèrement plus volumineux que les volumes RAR qu'ils protègent. 
            Si vous envisagez de copier des fichiers RAR et REV individuels sur un 
            support amovible, vous devez en tenir compte et indiquer une taille 
            de volume RAR inférieure de quelques kilo-octets à celle du support.

            Le paramètre facultatif "<N>" spécifie le nombre de volumes de 
            restauration à créer. Il doit être inférieur au nombre 
            total de volumes RAR de l'ensemble pour RAR 4.x et doit être inférieur
            à dix fois le nombre de volumes RAR pour le format RAR 5.0. 

            Vous pouvez également ajouter le caractère "%" ou "p" à ce paramètre, 
            pour que le nombre de fichiers ".rev"créés soit égal au pourcentage 
            spécifié à partir du nombre total de volumes RAR. 

            Par exemple :

            rar rv15% data.part01.rar

            Si le paramètre <N> est omis, il est défini sur 10%.

            RAR reconstruit les volumes manquants ou endommagés en utilisant la commande 
            "rc" ou automatiquement, s'il ne trouve pas le volume suivant 
            par rapport au nombre trouvé lors de la décompression du 
            fichier ".rev".

            Les copies d'origine des volumes endommagés sont renommées 
            "*.bad" avant la reconstruction. Par exemple, 
            "volname.part03.rar" sera renommé "volname.part03.rar.bad".
            

    s[nom] Convertir une archive en type SFX. L'archive est fusionnée avec 
           le module SFX (en utilisant le module par défaut "default.sfx" 
           ou le module spécifié dans [nom]). Dans la version Windows, le 
           fichier "default.sfx" se trouve dans le même répertoire que 
           "rar.exe", sous Unix  - dans le répertoire personnel de 
           l'utilisateur "/usr/lib ou /usr/local/lib".

    s-     Supprimer le module SFX de l'archive SFX existante. RAR créé 
           une nouvelle archive sans le module SFX, l'archive avec le 
           module SFX n'est pas supprimée.

    t      Tester les fichiers de l'archive. Cette commande exécute une 
           extraction factice, dans le but de valider le(s) fichier(s) de 
           l'archive spécifiée.

            Exemples :

           Tester les archives dans le répertoire courant :

            rar t *

           ou pour Unix :

            rar t '*'

           L'utilisateur peut tester les archives dans tous les 
           sous-répertoires, à partir du chemin courant :

            rar t -r *

           ou pour Unix :

            rar t -r '*'


    u      Mettre à jour les fichiers dans une archive. Ajouter les 
           fichiers qui ne sont pas déjà présents dans l'archive et mettre 
           à jour les fichiers modifiés depuis leur archivage.


    v[t[a],b]  Étendre la liste du contenu de l'archive [technique [tout] basique].

            La 'v' commande répertorie les attributs des fichiers archivés, la taille, la taille compressée,
            le taux de compression, la date, l'heure, la somme de contrôle et le nom, un fichier
            par ligne. Si le fichier est chiffré, la ligne débute par le caractère '*'.
            Pour la somme de contrôle BLAKE2sp, les deux premiers symbole et le dernier sont affichés.

            'vt' affiche les informations détaillées du fichier en mode multiligne.
            Ces informations incluent la somme de contrôle du fichier, le système d'exploitation,
            les options compression et d'autres paramètres.

            'vta' offre des informations détaillées sur les fichiers
            et sur les en-têtes de service comme les flux NTFS
            ou les données de sécurité des fichiers.


            'vb' répertorie les noms des fichiers avec le chemin, un par ligne,
            sans aucune autre information.

            Vous pouvez utiliser le commutateur -v pour répertorier le contenu de tous
            les volumes : rar v -v vol.part1.rar


            Les commandes 'vt', 'vta' et 'vb' sont équivalentes à 'lt', 'lta'
            et 'lb'.





    x       Extraire les fichiers avec le chemin complet.


            Exemples :


            1) extraire 10cents.txt dans le répertoire actuel sans afficher
               le commentaire d'archive

               rar x -c- dime 10cents.txt


            2) extract *.txt depuis docs.rar vers c:\docs directory


               rar x docs.rar *.txt c:\docs\


            3) extraire tout le contenu de docs.rar dans le répertoire actuel


               rar x docs.rar


    Paramètres (utilisés avec les commandes) :


    -?   Affiche l'aide pour les commandes et les paramètres. De la même 
         manière que lorsque la ligne de commande est vide ou qu'une 
         mauvaise commande est entrée.


    --   Arrêter l'analyse des paramètres.

         Ce paramètre indique à RAR qu'il n'y a plus de paramètre dans la 
         ligne de commande. Cela peut être utile s'il y a une archive ou 
         un nom débutant par le caractère "-" dans la ligne de commande. 
         Sans le paramètre '--', un nom de ce type sera traité comme un paramètre.

            Exemple :

            Ajoute tous les fichiers du répertoire actuel à l'archive 
            "Solide" ayant pour nom "-Nom_Inhabituel".

            RAR a -s -- -Nom_Inhabituel

    -ac  Désactive l'attribut "Archive" après la compression ou 
         l'extraction (Version Windows seulement).

            Si -ac est utilisé durant l'archivage, l'attribut de fichier "Archive"
            est effacé pour les fichiers traités.
            Durant l'extraction, -ac efface l'attribut "Archive" des fichiers extraits.
            Ce commutateur n'affecte pas les attributs des répertoires.


    -ad[1,2]   Autre chemin d'accès

          Cette option peut être utile pour décompresser un groupe 
          d'archives. Les commutateurs -ad et -ad1 créent un dossier 
          distinct pour les fichiers décompressés depuis chaque archive.
          Ces dossiers sont créés dans le dossier de destination pour le 
          commutateur -ad et dans chaque  dossier de l'archive pour le 
          commutateur -ad1.

          Le commutateur -ad2 place les fichiers décompressés directement 
          dans le dossier de chaque archive.
          Les dossiers distincts ne sont pas créés.
          
          Le paramètre du dossier de destination est ignoré pour le 
          commutateur -ad1 et-ad2.

            Exemples :

            1) rar x -ad *.rar data\

            Pour chaque archive décompressée RAR créera un sous-répertoire
            sous "data".

            2) rar x -r -adl arc\*.rar
            
            RAR recherchera des archives .rar dans le répertoire 'arc' 
            de façon récursive et créera des sous-répertoires pour chaque
            répertoire.


    -ag[format]
            Génère un nom d'archive en utilisant l'heure et la date du jour.

            Ajoute la date du jour à un nom d'archive lors de sa création. 
            Utile pour les sauvegardes quotidiennes.

            Le format de la chaîne à ajouter est défini avec le paramètre 
            en option "format" ou si ce paramètre est absent, par le format 
            "YYYYMMDDHHMMSS" par défaut. Le format de la chaîne peut 
            inclure les caractères suivants :

            Y   - Année
            M   - Mois
            MMM - Mois en lettre (Jan, Fév, etc.)
            W   - Le numéro de la semaine (une semaine débute par lundi)
            A   - Jour de la semaine (lundi = 1, .., dimanche = 7)
            D   - Jour du mois
            E   - Jour de l'année (ex : le 02/03/2002, c'est le 61 ème jour 
                  de l'année)
            H   - Heures
            M   - Minutes (les deux premiers 'M' après les heures sont traités
                  comme des minutes)
            S   - Secondes
            N   - Nombre d'archives. RAR recherche les archives
                  existantes avec le nom généré et s'il trouve, il 
                  incrémente le nombre d'archives jusqu'à ce qu'il 
                  puisse générer un nom unique.

            Chaque format de caractères des chaînes listés ci-dessus 
            représente un (ou des) caractère(s) supplémentaire(s) à 
            ajouter au paramètre -AG. Par exemple, les caractères WW 
            pour le nombre à deux chiffres de la semaine ou les 
            caractères YYYY pour le nombre à quatre chiffres de l'année.

            Si le premier caractère dans la chaîne "format" est le signe 
            "+", le nom de l'archive et la chaîne date sont intervertis, 
            ainsi la date précédera le nom de l'archive.

            Si le premier caractère de la chaîne de format est 'F', le 
            reste de la chaîne spécifie le format de chaîne par défaut pour 
            le commutateur -ag.
            Le commutateur -agf<format_par_défaut> n'a une valeur pratique que 
            lorsqu'il est placé dans le fichier de configuration rar.ini ou 
            dans la variable d'environnement RARINISWITCHES.
            Par exemple, si vous avez défini la variable d'environnement RARINISWITCHES 
            sur -agfAAAA-MM-JJ, vous pouvez utiliser -ag sans paramètre, 
            la chaîne AAAA-MM-JJ étant supposée.

            Le format chaîne peut contenir du texte facultatif placé entre les 
            caractères '{' et '}'. Ce texte sera inséré dans le nom de l'archive.

            Tous les autres caractères sont ajoutés au nom de 
            l'archive tels quels.
            
            Si vous devez mettre à jour des archives existantes, il est nécessaire 
            de faire attention avec le paramètre -ag. Selon la chaîne pour le format 
            et l'heure passée précédemment avec le paramètre -ag, généré avec un nom 
            d'archive existant peut être mal adapté. Dans ce cas, RAR créera une 
            nouvelle archive au lieu de mettre à jour l'archive existante.

            Exemples :

            1) Utilise le format par défaut YYYYMMDDHHMMSS

               rar a -ag sauvegarde

            2) Utilise le format DD-MMM-YY

               rar a -agDD-MMM-YY sauvegarde

            3) Utilise le format YYYYMMDDHHMM, en insérant la date avant 
               "sauvegarde"

               rar a -ag+YYYYMMDDHHMM sauvegarde

            4) Utilise le format YYYY-WW-A, en incluant la description du champ

               rar a -agYYYY{année}-WW{semaine}-A{jour de la semaine} sauvegarde

            5) Utiliser YYYYMMDD et le nombre d'archives. Permet de 
               générer des noms uniques même lorsque le masque au 
               format YYYYMMDD a déjà été utilisé le même jour.

               RAR a -agYYYYMMDD-NN sauvegarde

    -ai     Ignorer les attributs des fichiers.

            Si ce commutateur est utilisé durant l'extraction, RAR n'applique pas
            les attributs généraux du fichier stockés dans l'archive aux fichiers extraits.
            Ce commutateur préserve les attributs définis par le système d'exploitation
            lors de la création de nouveaux fichiers.

            Si ce commutateur est utilisé durant l'archivage, les valeurs prédéfinies,
            typiques des fichiers et répertoires, sont stockées au lieu des attributs
            réels.

            Dans Windows, les attrivuts archive, système, masqué et lecture seule
            sont affectés. Dans Unix - user, group, et autres autorisations.

   -am[s,r] Nom et heure de l'archive [Enregistrement, Restauration]
            Le commutateur -ams conserve les métadonnées de l'archive, y compris le nom de l'archive 
            d'origine et l'heure de création. Il peut être utilisé avec des commandes de modification 
            d'archive telles que 'a' ou 'ch'. Les métadonnées enregistrées sont affichées dans 
            l'en-tête des commandes de liste d'archives 'l' et 'v'.

            S'il est utilisé avec les commutateurs -tk ou -tl , -ams enregistre l'heure de modification 
            d'archive définie par ces commutateurs.

            Le commutateur -amr renomme une archive en nom enregistré. Il définit également l'heure 
            stockée comme heure de création et de modification de l'archive sous Windows et comme 
            heure de modification de l'archive sous Unix.
            Il ne peut être utilisé qu’avec la commande 'ch' qui ignore tous les autres commutateurs 
            de modification d'archives si -amr est spécifié.

            Le commutateur -am sans les modificateurs 's' et 'r' est traité comme -ams.
            
            Exemples :
            1) Créer files.rar et enregistrer ses métadonnées

               rar a -am files.rar

            2) Restaurer le nom d'origine de myfiles.rar

               rar ch -amr myfiles.rar


    -ao   Ajoute les fichiers avec l'attribut "Archive" activé 
            (Version Windows seulement).

            Si -ao est utilisé durant l'archivage, seuls les fichiers avec l'attribut "Archive"
            seront ajoutés à l'archive. Ce commutateur n'affecte pas les répertoires. 
            Les répertoires correspondants sont ajoutés, quels que soient leurs attributs.
            Vous pouvez également définir le commutateur -ed si vous souhaitez ignorer 
            les enregistrements de tous les répertoires.
            
            Exemple :

            Ajoute tous les fichiers ayant l'attribut "Archive" activé de 
            la racine du disque "C:\" à "f:sauvegarde" et désactive 
            l'attribut "Archive" des fichiers.

            rar a -r -ac -ao f:sauvegarde c:\*.*


    -ap<chemin>
            Place le chemin à l'intérieur de l'archive. Le chemin défini à 
            l'aide de ce paramètre est fusionné aux noms de fichiers, 
            lorsque vous ajoutez des fichiers a une archive et supprimé 
            des noms de ces fichiers lors de l'extraction.

            Par exemple, si vous souhaitez ajouter le fichier 
            "lisezmoi.txt" au répertoire "DOCS\ENG" de l'archive 
            "mise_à_jour", vous pouvez exécuter :

            rar a -apDOCS\ENG mise_à_jour lisezmoi.txt

            ou pour extraire "ENG" depuis le répertoire courant :

            rar x -apDOCS mise_à_jour DOCS\ENG\*.*


    -as   Synchronise le contenu d'une archive

            Si ce paramètre est utilisé lors de l'archivage, l'archive 
            ne comportera que les fichiers ajoutés. Il est pratique 
            d'utiliser ce paramètre en combinaison avec le paramètre 
            "-u" (mise à jour) pour synchroniser le contenu d'une 
            archive avec un répertoire d'archivage.

            Par exemple, après exécution de la commande :

            rar a -u -as sauvegarde sources\*.cpp

            l'archive "sauvegarde.rar" comportera uniquement les fichiers 
            "*.cpp" du répertoire "sources", tous les autres fichiers 
            seront supprimés de l'archive. Bien que cela s'apparente à la 
            création d'une nouvelle archive, il existe une exception 
            importante : si aucun fichier n'est modifié depuis la dernière 
            sauvegarde, l'opération sera exécutée beaucoup plus rapidement 
            que la création d'une nouvelle archive.


    -cfg-   Ignore le fichier de configuration et la variable 
            d'environnement.


    -cl     Convertit les noms de fichiers en minuscules.


    -cu     Convertit les noms de fichiers en majuscules.


    -c-    Désactive l'affichage des commentaires.


    -df    Supprime les fichiers après l'archivage.

            Déplacer les fichiers vers l'archive. Ce paramètre combiné 
            avec la commande "A" exécute la même action que la commande "M".
           

    -dh   Ouvre les fichiers partagés.

            Permet de traiter en écriture, les fichiers ouverts par 
            d'autres applications.

            Ce paramètre est utile si une application autorise l'accès du 
            fichier en lecture, mais si tous les accès sont interdits, 
            l'ouverture du fichier échouera toujours.

            Ce paramètre peut être dangereux car il permet à un fichier 
            d'être archivé pendant que ce même fichier est en cours de 
            modification par une autre application. Utilisez-le avec 
            beaucoup de précautions.


    -ds   Ne pas trier les fichiers lors de l'ajout à une archive "Solide".


    -dw   Effacer les fichiers après archivage

          Effacer les fichiers après archivage. Avant suppression, les données
          des fichiers sont remplacées par des octets zéro pour éviter toute récupération
          des fichiers supprimés. Le fichier est tronqué et un nom temporaire lui est attribué.

          Gardez à l'esprit que cette méthode est destinée aux disques durs conventionnels et qu'elle
          échouer sur des SSD. Cela s'explique par la technologie de nivellement de l'usure et par un
          adressage plus complexe des données.


    -ed   Ne pas ajouter les répertoires vides.

            Ce paramètre indique que l'enregistrement des dossiers ne doit 
            pas être stocké dans les archives créées. En extrayant une telle 
            archive, RAR crée des dossiers non vides basés sur les chemins 
            des fichiers qui s'y trouvent. Les informations sur les dossiers 
            vides sont perdues. Tous les attributs des dossiers non vides 
            excepté le nom (les droits d'accès, les flux, etc.)  seront perdus, 
            il est préférable d'utiliser ce paramètre uniquement si vous n'avez 
            pas besoin de préserver de telles informations.

            Si -ed est utilisé avec la commande 'm' ou le paramètre -df, RAR 
            n'enlèvera pas les dossiers vides.


    -ep     Exclut les chemins des noms. Avec ce paramètre, les fichiers 
            sont ajoutés à une archive sans inclure le chemin. Cela peut 
            avoir pour conséquence, que l'archive contienne plusieurs fichiers 
            portant le même nom.
            
            Si ce paramètre est utilisé pendant l'extraction, les chemins archivés
            sont ignorés pour les fichiers extraits. Tous les fichiers sont créés
            dans le même dossier de destination	


    -ep1    Exclut le répertoire de base des noms. Ne stocke pas le chemin 
            saisi dans la ligne de commande. Ignoré lorsque le chemin contient
            des caractères génériques.

            Exemple :

            1) ajouter tous les fichiers et répertoires du répertoire 'tmp'
               à l'archive 'test', mais exclure 'tmp\' des chemins archivés :

               rar a -ep1 -r test tmp\*

               Équivaut à la commande :

               cd tmp
               rar a -r ..\test
               cd ..

            2) extraire les fichiers correspondant à images\* mask vers le répertoire  dest\,
               mais supprimer 'images\' du chemin des fichiers créés :

               rar x -ep1 data images\* dest\

 
    -ep2    Inclut le chemin complet. Enregistre les chemins complets des 
            fichiers (à l'exception de la lettre du lecteur et du premier 
            anti-slash "\") lors de l'archivage.
    
    -ep3    Inclut le chemin complet y compris la lettre de l'unité.  
            Uniquement version Windows.

            Ce commutateur stocke le chemin complet des fichiers y compris la lettre 
            de l'unité si utilisée lors de l'archivage. Les séparateurs d'unités 
            (deux points) sont remplacés par des caractères de soulignement.

            Si vous utilisez -ep3 pour extraire, les caractères de soulignement, 
            seront remplacés par deux points et les fichiers seront extraits dans 
            le chemin et unité d'origine. Si un chemin de destination est spécifié, 
            il sera ignoré.

            Les chemins UNC sont également convertis de \\server\share en
            __server\share durant l'archivage. Leur état d'origine est rétabli
            durant l'extraction.

            Ce commutateur peut aider pour la sauvegarde sur plusieurs unités de 
            mêmes archives. Par exemple, vous pouvez lancer :

            rar a -ep3 -r backup.rar c:\ d:\ e:\

            crée une sauvegarde et :

            rar x -ep3 backup.rar

            la restaure.

            Mais en utilisant -ep3 il faut rester prudent et être sûr que 
            les archives ne contiennent pas de fichiers malveillants. 
            En d'autres termes, ne l'utiliser que si vous avez créé les archives ou
            si vous êtes sûr de leur provenance. Ce commutateur permet d'écraser 
            n'importe quel fichier à n'importe quel emplacement sur votre 
            ordinateur et même les fichiers systèmes, donc vous ne devriez 
            l'utiliser que pour les sauvegardes ou restaurations.

    -ep4<path>
            Exclure le préfixe de chemin des noms.

            Lorsque ce commutateur est utilisé durant l'archivage,
            le chemin indiqué est exclu des noms archivés lorsqu'il 
            se trouve au début mais qu'il ne correspond pas au nom complet.
            La comparaison est réalisée avec les noms déjà prêts à être archivés,
            en supprimant la lettre du lecteur et les séparateurs de chemin.

            Par exemple :

            rar a -ep4texts\books archive c:\texts\books\technical

            Supprime "text\books" des noms archivés, en commençant par 'technical'.
            Du fait que la comparaison est effectuée avec les noms, car ils sont 
            stockés dans l'archive, nous ne pouvons pas utiliser -ep4c:\texts\books.

            Si ce commutateur est utilisé lors de l'extraction, il fonctionne 
            de la même manière que le commutateur -ap<chemin>. S'il est présent 
            au début du nom du fichier archivé, le chemin d'accès est supprimé. 

            Par exemple :

            rar x -ep4texts\books archive

            Supprime 'texts\books' des chemins archivés commençant à cet emplacement.

    -e[+]<attr>    
            Spécifie le masque d'attributs pour les fichiers à 
            inclure. <masque> est un nombre au format décimal, octal (qui 
            doit débuter par un '0') ou hexadécimal (qui doit débuter par 
            '0x').
            
            Par défaut, sans le signe '+' avant <masque>, définit le
            masque d'exclusion. Si le résultat par un AND (ET) au niveau bits, 
            entre <masque> et les attributs du fichier est différent de zéro, le 
            fichier ne sera pas traités.

            Si le signe '+' est présent, il indique un masque d'inclusion.
            Uniquement les fichiers qui ont au moins un attribut spécifié dans 
            <masque> seront traités.

            Dans la version Windows, il est également possible d'utiliser 
            les symboles D, S, H, A et R à la place du masque numérique 
            pour les dossiers et les fichiers système, caché, archive et 
            en lecture seule. L'ordre dans lequel les attributs sont placés 
            n'est pas significatif. La version Unix supporte les symboles 
            D et V pour définir les attributs des dossiers et périphériques.

            Les deux paramètres sont autorisés -e<attr> et -e+<attr> sur la 
            même ligne de commande.

            Exemples :

            1) Le nom de l'archive uniquement dans le dossier sans le contenu :

               rar a -r -e+d dossiers

            2) Ne compresse pas les fichiers système et cachés :

               rar a -esh fichiers

            3) Ne pas extraire les fichiers en lecture seule :

               rar x -er fichiers


    -f      Actualiser les fichiers. Peut être utilisé avec l'extraction ou 
             la création d'archive. La chaîne de commande "a -f" est 
             équivalente à la commande "f", vous pouvez aussi utiliser le 
             paramètre "-f" avec les commandes "m" ou "mf". Si le paramètre 
             "-f" est utilisé avec les commandes "x" ou "e", uniquement 
             les anciens fichiers seront remplacés par les nouvelles 
             versions extraites de l'archive.

    -fcu[fichier] Utiliser le format texte Unicode pour ajouter ou écrire 
                  des commentaires d'archives.

            En ajoutant un commentaire à l'archive, ce commutateur modifie 
            le comportement du paramètre -z< fichier> forçant WinRAR à traiter 
            le fichier spécifié texte au format Unicode. Un fichier Unicode doit 
            avoir les caractères FFFE ou FEFF Unicode dans l'entête du fichier, 
            dans le cas contraire WinRAR ignorera ce commutateur et traitera le 
            fichier comme texte d'ASCII. Il est permis de remplacer la combinaison 
            "-fcu -z<fichier>" par le paramètre -fcu[fichier].
            
            En utilisant simultanément la commande cw, le paramètre -fcu place en 
            bas du fichier de sortie le texte endian Unicode.


    -hp[p]  Crypte les données et les en-têtes du fichier

            Ce paramètre est semblable à "-p[mot_de_passe]", mais le 
            paramètre "-p" crypte uniquement les données du fichier et 
            laisse visible les autres informations comme par exemple, 
            les noms de fichiers. Ce paramètre crypte tous les secteurs 
            sensibles d'une archive comme les données des fichiers, les
            noms de fichiers, les tailles, les attributs, les commentaires 
            et d'autres blocs, ainsi il fournit un niveau de sécurité très 
            élevé. Sans mot de passe il est impossible de visualiser le 
            contenu de l'archive cryptée avec "-hp". 

            Exemple :

            rar a -hpfGzq5yKw secret report.txt

            ajoute le fichier "report.txt" à l'archive cryptée "secret.rar" 
            en utilisant le mot de passe "fGzq5yKw".

    -ht[b|c]

            L'intégrité des données des fichiers dans une archive RAR est protégée 
            par les sommes de contrôle calculées et stockées pour chaque fichier archivé.

            Par défaut, WinRAR utilise la fonction CRC32 pour calculer la somme de contrôle. 
            Le format d'archive RAR 5.0 permet également de sélectionner la fonction de 
            hachage BLAKE2 au lieu de CRC32.

            Spécifiez le commutateur -htb pour le hachage BLAKE2 et -htc pour la fonction CRC32. 
            Dans la mesure où CRC32 est l'algorithme par défaut, -htc sera utile pour 
            remplacer le mode -htb dans la configuration de WinRAR.

            La longueur de la sortie CRC32 est de 32-bit. Bien que les propriétés CRC32 
            permettent de détecter la plupart des erreurs de données involontaires, cette option 
            n'est pas suffisamment fiable pour vérifier l'identité des fichiers. En d'autres termes, 
            si deux fichiers présentent la même valeur CRC32, il n'est pas garanti que le contenu 
            des fichiers est le même.

            La longueur de la sortie BLAKE2 est de 256-bit. S'agissant d'une fonction de hachage 
            cryptographique puissante, si deux fichiers ont la même valeur de BLAKE2, leur contenu 
            est le même. La propriété de détection d'erreurs BLAKE2 est également plus fiable 
            que dans les CRC32 plus courts.

            Dans la mesure où la sortie BLAKE2 est plus longue, l'archive résultante est 
            légèrement plus grande qu'avec le commutateur -htb

            Si les en-têtes d'archives ne sont pas chiffrés (pas de commutateur -hp), les sommes 
            de contrôle des fichiers RAR 5.0 chiffrés sont modifiées à l'aide d'un algorithme 
            de mot de passe spécial dépendant, rendant impossible de deviner le contenu 
            en se basant sur les sommes de contrôle des fichiers. Les sommes de contrôle 
            de fichier chiffrés ne correspondent pas forcément aux valeurs standard 
            de CRC32 et BLAKE2.

            Ce commutateur est uniquement pris en charge par le format RAR 5.0.

            Vous pouvez voir la somme de contrôle des fichiers archivés à l'aide de 'vt' ou 'lt'.
    

            Exemple:

            rar a -htb lists.rar *.lst

            ajoute *.lst à lists.rar en utilisant les sommes de contrôle BLAKE2sp.



    -id[c,d,n,p,q]  
            Affiche ou désactive les messages.

            Le paramètre -idc désactive la chaîne du copyright.
            Le paramètre -idd désactive la chaîne "FIN" à la fin de l'opération.
            Le paramètre -idn désactive les sorties des noms archivés durant la
            création, le test ou l'extraction d'une archive. Il désactive les messages
            de création de dossier durant la décompression d'un fichier dans un
            un répertoire inexistant. 
            Il peut affecter d'autres commandes de traitement d'archives. Il ne masque 
            pas les autres messages et le pourcentage total. Des défaut visuels mineurs
            comme le recouvrement de certains caractères des messages
            par le pourcentage sont susceptibles de se produire avec -idn.
            Le paramètre -idp désactive l'indicateur de pourcentage.
            Le paramètre -idq active le mose silencieux, uniquement les messages 
            d'erreur et les questions sont affichés.

            Il est autorisé d'utiliser plusieurs paramètres simultanément, -idcdp
            est correct. 

    -ieml[.][adresse]
            Envoyer l'archive par e-mail. Uniquement pour la version Windows.

            Ce paramètre, inséré à la suite d'une commande pour créer ou 
            mettre à jour une archive, permet d'attacher cette archive à un 
            message e-mail pour l'envoyer. Le serveur de messagerie que 
            vous utilisez, doit être conforme au protocole IMAP pour 
            pouvoir utiliser ce paramètre (la plupart des serveurs de 
            messagerie, actuels soutiennent le protocole IMAP).

            Vous pouvez saisir une adresse e-mail de destination 
            directement après le paramètre ou laisser vide. Dans ce dernier 
            cas, l'adresse sera demandée par votre programme de messagerie.
		Il est possible de spécifier plusieurs adresses séparées par 
		des virgules ou des points-virgule.

            Si vous ajoutez un point après le paramètre "-ieml", l'archive 
            créée ou modifiée sera supprimée lorsqu'elle sera attachée à 
            l'e-mail avec succès. Si le paramètre est utilisé en créant une 
            archive multi-volumes, chaque volume sera attaché à un nouveau 
            message e-mail.


    -ierr   Envoie tous les messages vers la sortie standard.


    -ilog[nom]
            Consigne les erreurs dans un fichier.

            Consigne les messages d'erreur dans le fichier rar.log. Si le paramètre
            facultatif 'nom'n'est pas défini, le fichier journal est créé avec les 
            valeurs par défaut suivantes :

            Unix :   fichier .rarlog dans le dossier personnel de l'utilisateur ;
            Windows: fichier rar.log dans le dossier %APPDATA%\WinRAR.


            Si le paramètre 'nom' comprend un nom de fichier sans chemin d'accès,
            RAR crée le fichier journal dans le dossier par défaut cité
            précédemment, en utilisant le nom défini. Indiquez à la fois le nom du
            fichier et le chemin d'accès si vous souhaitez modifier l'emplacement
            du journal.

            Par défaut, le fichier journal utilise l'encodage UTF-16 little endian. 
            Il est toutefois possible de le changer à l'aide du commutateur 
            -sc<jeu de caractères>g, comme -scag pour l'encodage à octet unique natif.

            Exemple :

            rar a -ilogc:\log\backup.log backup d:\docs

            crée le fichier journal c:\log\backup.log en cas d'erreur.


    -inul   Désactive tous les messages.

    -ioff[n]
            Arrêter le PC après la fin des opérations.
								

            Utilisez -ioff ou -ioff1 pour arrêter le PC, -ioff2 pour mettre en veille prolongée,
            -ioff3 en veille et -ioff4 pour redémarrer. Ces fonctionnalités d'alimentation
            doivent être prises en charge par le système d'exploitation.

            Si plusieurs instances de RAR sont exécutées avec ce commutateur,
            le PC est éteint lorsque la dernière instance se termine.

    -isnd   Activer le son.
	    Utilisez -isnd pour activer le son des notifications
	    et -isnd- pour le désactiver.

    -iver   Afficher le numéro de version et quitter. Vous pouvez exécuter simplement "RAR -iver".

    -k      Verrouille l'archive.
            
            Empêche toute modification accidentelle d'une archive par RAR.
            Pour de plus amples détails, voir la description de la commande 'k'.

            Exemple :

            rar a -k final.rar srcfiles

    -kb     Conserve les fichiers endommagés extraits.

            RAR, par défaut, supprime les fichiers qui présentent des erreurs 
            de somme de contrôle après l'extraction. Le commutateur "-kb" spécifie que les 
            fichiers avec des erreurs de somme de contrôle ne doivent pas être supprimés.


    -m<n>   Définit la méthode de compression :

       -m0   Stocke : Ajoute les fichiers à archiver sans compression
       -m1   La plus rapide : Méthode de compression la plus rapide (faible 
             compression)
       -m2   Rapide : Méthode de compression rapide
       -m3   Normale : Méthode de compression normale (par défaut)
       -m4   Bonne : Méthode de compression bonne (plus de compression)
       -m5   Meilleure : Meilleure méthode de compression (plus de 
             compression mais plus lente)

            Si ce paramètre n'est pas spécifié, RAR utilise la méthode 
            "-m3" (compression normale).
 
    -mc<par>
            Définit les paramètres avancés de compression.

            Une utilisation incorrecte de ce commutateur peut entraîner une 
            réduction des performances et de la compression. La syntaxe de ce 
            commutateur est la suivante :

            -mc[canaux][mode][+ ou -]

            où <mode> est le champ à caractère unique définissant l'algorithme 
            de compression à configurer.

            Les valeurs possibles pour <mode> sont les suivantes :

            D - Compression delta ; 
            E - Compression d'exécutables 32 bits ; 
            L - recherche longue portée ; 
            X - recherche exhaustive.

            Le signe '+' à la fin du commutateur applique l'algorithme sélectionné 
            à toutes les données traitées, '-' le désactive totalement. 
            Si aucun signe n'est indiqué, RAR choisit automatiquement les modes, 
            en fonction des données et de la méthode de compression actuelle. 
            Le commutateur -mc- désactive tous les modes.

            Le paramètre <nombre de canaux> est utilisé par la compression delta 
            et ignoré par les autres modes. Les modes disponibles sont décrits ci-dessous.

            Compression Delta

            Divise les données en plusieurs canaux d’un octet et calcule la différence 
            entre eux. Peut améliorer le taux de compression des données de tables. 
            <Nombre de canaux> est le nombre de canaux d'octets compris entre 1 et 31.

            Compression d’exécutables x86
            
            Peut améliorer le taux de compression des exécutables x86 32 et 64 bits.

            Recherche longue portée

            Active l'algorithme de recherche conçu pour localiser efficacement des blocs 
            de données répétés plus longs et plus distants. Il peut aider à améliorer 
            le taux de compression et parfois la vitesse pour les données redondantes 
            d’un fichier texte volumineux. Cet algorithme augmente les besoins en mémoire 
            lors de l'archivage, mais n'affecte pas les besoins en mémoire pour l’extraction 
            ni la vitesse.

            Si ni -mcl+ ni -mcl- ne sont indiqués, RAR applique la recherche longue portée 
            en fonction de la méthode de compression, de la taille du dictionnaire et 
            d'autres paramètres. Cet algorithme est requis et activé automatiquement pour 
            les dictionnaires de plus de 4 Go. Il ne peut pas être désactivé avec le commutateur -mcl-.

            Le mode de recherche longue portée est applicable aux méthodes de compression 
            -m2.-m5 et ignoré pour -m1.

            Recherche exhaustive

            Active une recherche et un algorithme de compression beaucoup plus lents 
            et plus exhaustifs. Il peut offrir un gain de compression supplémentaire sur 
            certains types de données redondantes, mais offre une vitesse beaucoup plus faible. 
            La recherche longue portée est nécessaire pour mettre en œuvre ce mode de manière efficace. 
            Pour cette raison, -mcx l'active automatiquement.

            
            Exemple :

            RAR a -s -md1g -mcx texts *.txt

            Créer une archive solide avec un dictionnaire de 1 Go et la recherche exhaustive. 

            -mlp Utiliser des pages de mémoire de grande taille
            
            Utiliser des unités d'allocation de mémoire plus grandes, ce qui peut améliorer 
            l'archivage et, dans certains cas, la vitesse d'extraction. En règle générale, 
            le gain de performance est plus important pour les dictionnaires de compression plus 
            volumineux et les méthodes de compression plus lentes.

            Ce commutateur nécessite l’autorisation "Verrouiller les pages en mémoire" et 
            s'il n'est pas disponible, WinRAR propose de l'attribuer au compte de l'utilisateur 
            actuel, ce qui le rend disponible pour d'autres logiciels également. Le redémarrage 
            de Windows est nécessaire pour activer la nouvelle autorisation une fois attribuée.

            Les pages de mémoire de grande taille ne peuvent pas être placées dans le fichier 
            d'échange de Windows et occupent toujours la mémoire physique.
            Lorsque ce commutateur est présent, le gestionnaire des tâches de Windows peut afficher 
            des valeurs incorrectes d'utilisation de la mémoire pour WinRAR.
            Ce commutateur n'est pris en charge que par le format d'archive RAR.

            Exemple :
            
            WinRAR a -mlp backup.rar data\*

            -md[x]<Taille>[k,m,g] : sélectionner la taille du dictionnaire

            Le dictionnaire de glissement est la zone de mémoire utilisée par l'algorithme de 
            compression pour rechercher et compresser des schémas de données répétitives. Si la taille 
            du fichier à compresser (ou la taille totale des fichiers dans le cas d'une archive compacte) 
            est plus importante que la taille du dictionnaire, augmenter la taille du dictionnaire aura 
            probablement pour effet d'augmenter le taux de compression, de réduire la vitesse de compression 
            et d'augmenter les besoins en mémoire.

            Pour le format d'archive RAR 5.0, la taille du dictionnaire peut être :
            128 Ko, 256 Ko, 512 Ko, 1 Mo, 2 Mo, 4 Mo, 8 Mo, 16 Mo, 32 Mo, 64 Mo, 128 Mo, 256 Mo, 512 Mo, 
            1 Go, 2 Go, 4 Go.

            WinRAR 7.0 étend la taille maximale des dictionnaires jusqu'à 64 Go et permet de ne pas 
            élever au carré les tailles des dictionnaires dépassant 4 Go. Ces archives peuvent être 
            décompressées par WinRAR 7.0 et plus récent.

            Par défaut, WinRAR refuse de décompresser les archives dont le dictionnaire dépasse 4 Go.
            Cela permet d’éviter une allocation de mémoire importante inattendue. Il est possible de modifier 
            la limite par défaut dans les paramètres de compression ou d'utiliser -md<taille> ou -mdx<taille> 
            pour permettre la décompression des dictionnaires jusqu'à la taille définie.
            Contrairement à -md<size>, -mdx<size>s'applique uniquement à l'extraction et peut être 
            ajouté au fichier rar.ini ou à la variable d'environnement RARINISWITCHES, sans affecter 
            les commandes d'archivage.

            Les modificateurs 'k', 'm' et 'g' placés après la taille, définissent des unités kilo-octets, 
            méga-octets et gigaoctets. Exemple : -md64m pour un dictionnaire de 64 Mo. Si aucun modificateur 
            n'est présent, les méga-octets sont supposés pour -md<taille> et les giga-octets pour le commutateur 
            -mdx<taille>, donc -md64m et -md64 ou -mdx8 et -mdx8g sont égaux.

            Les besoins en mémoire pour la compression varient en fonction de la taille du dictionnaire 
            et de la présence d'un commutateur de recherche longue portée -mcl. On estime à 7x la taille 
            du dictionnaire pour 1 Go et 1,5x pour un dictionnaire de 64 Go.

            Lors de l'extraction, une taille légèrement supérieure à celle du dictionnaire est allouée.

            Si la taille de tous les fichiers source pour une archive Solide ou si la taille du fichier 
            source le plus volumineux pour une archive non Solide est au moins deux fois inférieure à 
            la taille du dictionnaire, WinRAR peut réduire la taille de ce dictionnaire. L'utilisation 
            de mémoire est réduite sans affecter la compression.

            La taille variable par défaut du dictionnaire est de 32 Mo.

            Exemple :

            RAR a -s -md128 lib *.dll

            créer une archive compacte dans un format RAR 5.0 avec un dictionnaire de 128 Mo

    -me[par]
            Définit les paramètres de chiffrement.

            Désormais, "S" est le seul paramètre pris en charge.
            Utilisez le commutateur -mes pour ignorer les fichiers 
            chiffrés lors de l'extraction ou du test.

    -ms[liste]
            Spécifie les types de fichiers à stocker.

            Spécifier les types de fichiers, qui seront stockés sans 
            compression. Cela peut augmenter la vitesse d'archivage sans 
            perte apparente du taux de compression.

            Le paramètre facultatif <liste> définit la liste d'extensions 
            des fichiers séparés par un point-virgule. Par exemple, 
            "-msrar;zip;jpg" forcera RAR à stocker sans compression toutes 
            les archives RAR et ZIP et tous les fichiers images ".jpg". Il 
            est également permis de spécifier des masques de fichiers avec 
            joker dans la liste, ainsi "- ms*.rar;*.zip;*.jpg" est 
            équivalent. Plusieurs commutateurs -ms sont autorisés : 
            par exemple -msrar -mszip au lieu de -msrar.zip.

            Dans Unix un commutateur -ms contenant plusieurs types de fichiers doit
            être délimité par des guillemets. Ces derniers empêchent le traitement des points-virgules
            par l'environnement Unix. Une autre solution consiste à utiliser des commutateurs -ms<type>
            individuels pour chaque type de fichier.

            Si <liste> n'est pas spécifié, le paramètre "-ms" utilisera 
            l'ensemble des extensions par défaut, qui inclut les types de 
            fichiers suivants :

            7z, ace, arj, bz2, cab, gz, jpeg, jpg, lha, lz, lzh, mp3,
            rar, taz, tbz2, tgz, txz, zst, xz, z, zip, zipx, tzst

    -mt<multitâches>
            
             Définir le nombre de tâches.

             Le paramètre <tâches> peut prendre les valeurs de 1 à 64. Il définit 
             le nombre maximal de tâches actives pour l'algorithme de compression 
	     et pour les autres modules RAR pouvant démarrer des tâches. WinRAR
             tente de respecter cette recommandation mais le nombre réel de tâches 
             peut parfois différer de celui indiqué.

             Si le paramètre <tâches> est à zéro, WinRAR utilisera l'algorithme 
             simple de compression.

             Le changement du paramètre de <tâches> affecte légèrement le rapport 
             de compression, ainsi des archives créées avec différent paramètres 
             -mt les algorithmes de compression ne seront pas égaux même si tous 
             les autres sont égaux.

             Si le paramètre -mt n'est pas spécifié, WinRAR essayera de détecter 
             le nombre de processeurs disponibles et de choisir le nombre et 
             précisera le nombre de tâches automatiquement.


    -n<f>   Filtrer les fichiers inclus.

            Applique le masque en tant que filtre supplémentaire sur la liste 
            de fichiers inclus. Des caractères génériques peuvent être utilisés 
            dans le nom et le masque de fichier. Voir la description du commutateur
            -x pour plus de détails sur la syntaxe du masque.Vous pouvez utiliser 
            le commutateur « -n » plusieurs fois.

            Ce paramètre ne se substitue pas aux masques de fichiers 
            habituels, qui s'écrivent toujours dans la ligne de commande. 
            C'est un filtre additionnel limitant les fichiers traités à
            ceux correspondant au masque spécifié par le paramètre -n.
            Ce qui peut aider à réduire la longueur de la ligne de commande.

            Par exemple, si vous voulez compresser tous les fichiers 
            *.txt et *.lst dans les dossiers Projet et Info, vous 
            pouvez saisir :

            rar a -r text Projet\*.txt Projet\*.lst Info\*.txt Info\*.lst

            ou utiliser le paramètre -n :

            rar a -r -n*.txt -n*.lst text Projet Info


    -n@<lf> Lire les masques de filtres supplémentaires depuis la liste des fichiers.

            Similaire au paramètre -n<f>, mais lit les masques 
            de filtre à partir du fichier liste. Si vous utilisez 
            le paramètre -n@ avec le nom de fichier dans la liste, 
            il lira des masques de fichiers depuis stdin.
            
            Ce commutateur ne remplace ni la liste habituelle des fichiers
            ni les masques de fichiers. Ces derniers doivent toujours être
            saisis en ligne de commande.
            Il s'agit d'un filtre supplémentaire limitant les fichiers traités
            à ceux correspondant au masque d'inclusion défini dans le commutateur
            -n.

            Exemple :

            rar a -r -n@inclist.txt text Projet Info

    -oc     Placer l'attribut de compression pour NTFS. Uniquement version Windows.

            Permet de restaurer l'attribut de compression pour NTFS en extrayant 
            les fichiers. RAR sauvegarde les attributs de compression des 
            fichiers en créant des archives, mais ne les restaure pas sauf si 
            -oc est utilisé.

    -oh     Enregistrer les liens durs au lieu du fichier

            Si l'archivage de fichiers comprendre plusieurs liens NTFS en dur, 
            le premier lien en dur est archivé comme un fichier habituel et 
            le reste des liens en dur est archivé en tant que liens vers 
            ce premier fichier. Lors de la création de tels fichiers, WinRAR 
            crée les liens durs au lieu des fichiers habituels

            Vous ne devez pas supprimer ou renommer le premier lien dur une fois 
            que l'archive a été créé. En effet, l'extraction des liens suivants 
            ne serait plus possible. Si vous modifiez le premier lien, 
            les liens suivants seront également mis à jour après extraction. 
            La commande d'extraction doit impliquer le premier lien dur pour créer 
            les liens durs suivants. 

            Ce commutateur n'est pris en charge que par les archives RAR 5.0. 

    -oi[0-4][:<minsize>]
	    Enregistrer les fichiers identiques comme des références.

            Le commutateur -oi0 (ou simplement -oi-) désactive le traitement des fichiers 
            identiques. Ces fichiers sont donc compressés comme des fichers habituels. Il peut être utilisé
            pour remplacer une autre valeur -oi stockée dans la configuration de RAR.

	    Si -oi1 (ou simplement -oi) est spécifié, WinRAR analyse le contenu du fichier avant 
            de commencer l'archivage. Si plusieurs fichiers identiques sont détectés, 
            le premier fichier est enregistré comme d'habitude et tous les fichiers 
            suivants sont enregistrés comme des références du premier fichier. 
            Cela permet de réduire la taille de l'archive, mais implique certaines 
            restrictions aux archives obtenues. Vous ne devez pas supprimer ou renommer 
            le premier fichier identiques une fois que l'archive a été créé. En effet, 
            l'extraction des fichiers suivants utilisés comme référence ne serait 
            plus possible. Si vous modifiez le premier fichier, les fichiers suivants 
            seront également mis à jour après extraction.

            Bien qu'il soit normalement possible de décompresser une référence sans 
            décompresser le premier fichier, il peut être nécessaire dans certains cas d'impliquer 
            le premier fichier dans l'extraction pour créer les fichiers suivants avec succès. 
            C'est le cas notamment des archives multivolumes stockées sur plusieurs supports amovibles 
            et des archives contenant un très grand nombre de références.

            Il est recommandé d'utiliser -oi uniquement lorsque vous compressez 
            un grand nombre de fichiers identiques et lorsque vous ne comptez 
            pas modifier une archive ultérieurement. Si tous les fichiers identiques 
            sont assez petits pour tenir dans le dictionnaire de compression spécifié 
            avec le commutateur - md<n>, -speuvent être une solution plus souple que -oi.

            Le commutateur -oi2 est similaire à -oi1, à une différence près :
            il affiche les noms des fichiers identiques avant de débuter
            l'archivage.

            Les commutateurs -oi3 et -oi4 permettent d'utiliser RAR pour
            générer des listes de fichiers identiques. Bien qu'il soit toujours
            nécessaire d'indiquer une archive test pour rendre la syntaxe valide,
            aucune archive n'est créée dans ce mode et rien n'est compressé.
            Si -oi3 est utilisé, la taille et les noms des fichiers sont affichés
            et le groupe des fichiers identiques est séparé du reste par une ligne vide.
            Le commutateur -oi4 affiche les noms des fichiers et ignore le premier fichier
            identique de chaque groupe. Seuls les doublons sont répertoriés.
            
            La valeur facultative <minsize>permet de définir la taille minimale des fichiers. 
            Les fichiers inférieurs à <minsize> ne sont pas analysés et ne sont pas considérés 
            comme identiques. En l'absence de ce paramètre, 64 Ko est la valeur par défaut. 
            L'utilisation d'un paramètre <minsize> trop petit peut augmenter le temps requis 
            pour détecter les fichiers identiques.

            Les commutateurs -oil et oi2 ne sont pris en charge que par les archives RAR 5.0.

            Exemples :

            1) rar a -oi -ma archive

            Enregistre le contenu du répertoire en cours dans archive.rar.
            Stocke les fichiers identiques comme des références.

            2) rar a -oi3:1000000 -r dummy c:\photo\*.jpg

            Répertorie tous les fichers *.jpg en double supérieure ou égaux à
            1 000 000 d'octets dans c:\photo et ses sous-répertoires.
    

    -ol[a,-]     
            Traiter les liens symboliques en tant que lien [chemins absolus,ignorer]

            
            Enregistrer les liens symboliques en tant que liens, de sorte que le contenu
            des fichiers ou des répertoires ne soit pas archivé.
            Dans la version Windows version, les points d'analyse sont également enregistrés 
            comme des liens.
            Ces entrées sont restaurées comme des liens symboliques ou des points d'analyse 
            durant l'extraction.

            Pris en charge par les versions Unix et Windows de RAR.

            Dans Windows il peut être nécessaire d'exécuter RAR en tant qu'administrateur pour
            créer des liens symboliques durant l'extraction.

            RAR ajoute tous les liens indépendamment de la cible lors de l'archivage avec le commutateur -ol.
            Lors de l'extraction, pour éviter de placer des fichiers en dehors du dossier de destination, 
            WinRAR peut ignorer les liens symboliques avec des chemins absolus, un nombre excessif de "." 
            dans la cible du lien ou d'autres paramètres de lien potentiellement dangereux. 
            Il peut également convertir certains liens en dossiers. Vous pouvez désactiver ces contrôles 
            de sécurité et extraire tous les liens tels qu'ils sont avec le commutateur -ola.

            Le placement de fichiers en dehors du dossier de destination peut présenter un risque de 
            sécurité lors de l'extraction. N'utilisez le commutateur -ola que si vous êtes certain
            que le contenu des archives est sûr, comme votre propre sauvegarde.

            Les liens considérés comme sûrs par WinRAR sont 
            toujours extraits, indépendamment du commutateur -ol ou -ola, à moins que -ol- ne soit défini.

            Le commutateur -ol- ignore les liens symboliques durant l'archivage et l'extraction.

            -om[-|1][=liste] - propager la marque du Web

            Les navigateurs Internet peuvent ajouter l’indicateur « Mark of the Web » aux 
            fichiers téléchargés. Il est stocké dans la section zone.identifier du flux de données NTFS 
            alternatif et fournit les informations sur la zone de sécurité des fichiers, sur son emplacement 
            initial et sur les champs facultatifs. Divers logiciels peuvent l'utiliser à des fins de sécurité.

            Par défaut, WinRAR copie le contenu de l'archive Mark of the Web dans les fichiers extraits de 
            cette archive si l'option "Propager la marque du Web" de la boîte de dialogue Paramètres de sécurité
            est autorisée, mais ce commutateur de ligne de commande peut être utilisé pour l'ignorer.

            Si ce commutateur est suivi de "1", toutes les marques des champs Web sont copiées de l'archive 
            vers les fichiers extraits. Pour -om sans '1', seule la valeur de la zone de sécurité est propagée.
            Les informations contenues dans les autres champs peuvent être utiles pour identifier la source d'un 
            fichier, mais elles peuvent révéler le lieu de téléchargement potentiellement confidentiel, l'adresse IP 
            et d'autres informations sensibles si le fichier est partagé avec d'autres personnes.  Par conséquent, 
            le comportement par défaut de ce commutateur sans le modificateur '1' est d'omettre tous les champs 
            à l'exception de la valeur de la zone de sécurité.

            Le paramètre facultatif "-" interdit la propagation de la Marque du Web et peut être utilisé pour 
            remplacer les paramètres stockés dans le fichier de configuration rar.ini ou dans la variable 
            d'environnement RARINISWITCHES.

            Le paramètre facultatif <liste> définit la liste des extensions de fichiers séparées par des points-virgules.
            Par exemple, -om=doc;exe;bat obligera WinRAR à propager la marque du Web uniquement pour les fichiers *.doc, 
            *.exe et *.bat. Il est également possible de spécifier des masques de fichiers génériques dans la liste, 
            de sorte que -om=*.doc;*.exe;*.bat fonctionnera également. Si la liste est omise, tous les fichiers extraits 
            sont pris en compte.

            Le commutateur -os peut être utilisé pour préserver la Marque du Web des fichiers sources lors de l'archivage, 
            afin qu'ils soient restaurés lors de l'extraction.

            Exemples :
            
            1) rar x -om archive.rar

            propager la marque du Web de l’archive à tous les fichiers extraits.
            Inclure uniquement la valeur de la zone de sécurité
            
            2) rar x -om1=doc;exe archive.rar

            propager la marque du Web de l’archive vers *.doc et *.exe.
            Inclure tous les champs de la marque du Web


  -oni      Autoriser les noms potentiellement incompatibles.

            Alors que le système de fichiers NTFS autorise les noms de fichier avec des espaces 
            de fin et des points, ainsi que des noms de périphériques réservés, beaucoup de 
            programmes Windows ne parviennent pas à traiter de tels noms correctement.
            Lorsque ce paramètres n'est pas indiqué, RAR supprime les espaces et points à la fin des noms de fichiers
            durant l'extraction.
            Il insère également le caractère de soulignement au début des noms de périphériques 
            réservés, tels que aux.
            Indiquez ce paramètre lorsque vous souhaitez extraire les noms en l'état.
            Il peut présenter des risques de compatibilité ou même de sécurité.

            Version Windows uniquement.

    -op<chemin>

            Définir le chemin d'accès de sortie.
            
            Indiquez le dossier dans lequel placer les fichiers extraits à l'aide 
            des commandes x et e. Ce dossier est créé par WinRAR s'il n'existe pas déjà.

            Contrairement au paramètre de ligne de commande <chemin d'extraction\>, 
            le commutateur -op accepte également les chemins sans séparateur de 
            chemin final.
 
            Exemple :

            rar x -opdest archive

            décompresse le contenu de archive.rar dans le dossier 'dest'.

    -or     Renommer automatiquement les fichiers extraits si le fichier 
            ayant le même nom existe déjà. Le fichier sera renommé par 
            exemple 'nomdufichier(N).txt', ou 'nomdufichier.txt' 
            'nomdufichier(N).txt' ou 'nomdufichier.txt' est de même nom 
            que le fichier original et 'N' est un nombre qui s'incrémente 
            tant qu'il y a des fichiers de même nom.


    -os     Sauvegarde les flux NTFS. Uniquement version Windows.

            Ce commutateur ne prend son sens que dans un système de fichiers NTFS 
            et permet de sauvegarder alternativement les flux de données associés à un fichier.
            Si vous utilisez des données logicielles dans des flux alternatifs, il peut être 
            nécessaire de l'indiquer lorsque vous archivez des données et que vous souhaitez 
            préserver les flux.

            Les flux ne sont pas enregistrés pour les fichiers chiffrés sur NTFS.


    -ow     Utiliser ce paramètre lors d'un archivage pour sauvegarder les 
            informations de sécurité d'un fichier et lors d'une extraction 
            pour les restaurer.

            La version RAR pour Unix sauvegarde le fichier propriétaire et 
            le groupe lorsque vous utilisez ce paramètre.

            La version Windows stocke le fichier propriétaire, le groupe, 
            les autorisations pour fichiers et les informations d'audit 
            avec ce paramètre, mais seulement si vous avez le droit de les 
            lire. Remarquez que seul le système de fichier NTFS supporte 
            ce fichier basé sur la sécurité.

    -o+     Écrase les fichiers existants.


    -o-     Évite les fichiers existants.


    -p[mot_de_passe]   Utilise un mot de passe [mot_de_passe] pour crypter 
            les fichiers pendant l'archivage. Le mot de passe est sensible 
            à la casse (sensible à la casse = différencie les majuscules 
            des minuscules). Si vous oubliez de spécifier le mot de passe 
            dans la ligne de commande, vous serez averti par le message 
            "Entrer le mot de passe". Vous pouvez également utiliser la
            redirection de fichier ou la barre verticale pour indiquer
            un mot de passe lorsque le paramètre <pwd> est absent.

            Exemples :

           1) rar a -psecret texts.rar *.txt

            ajoute les fichiers *.txt et les chiffres avec le mot de passe "secret".

            2) rar -p texts.rar *.txt < psw.txt

            définit le contenu de psw.txt en tant que mot de passe.

    -qo[-|+]
            Ajouter rapidement une information ouverte [aucune|forcer]

            Les archives RAR stockent chaque en-tête de fichier contenant des informations 
            telles que le nom du fichier, temps, dimensions et attributs immédiatement avant 
            les données du fichier décrit. Cette approche est plus robuste que le stockage 
            de tous les en-têtes de fichier en un seul bloc continu. En effet, lorsqu'il est 
            rompu ou tronqué, le contenu de l'archive entière est détruit. Bien qu'étant 
            plus fiables, ces en-têtes de fichier disséminés dans l'ensemble des archives 
            sont plus lents à consulter lorsque nous avons besoin d'ouvrir rapidement le contenu 
            de l'archive dans un environnement comme l'interface graphique de WinRAR.

            Pour améliorer la vitesse d'ouverture des archives sans rendre l'archive entière 
            dépendante d'un seul bloc endommagé, les archives RAR 5.0 peuvent inclure un 
            enregistrement d'ouverture rapide en option. Cet enregistrement est ajouté 
            à la fin de l'archive et contient des copies des noms de fichiers ainsi que 
            d'autres informations stockées dans un seul bloc continu, en plus des en-têtes 
            de fichiers normaux à l'intérieur de l'archive. Dans la mesure où le bloc 
            est continu, son contenu peut être lu rapidement, sans nécessité d'effectuer 
            de nombreuses opérations de recherche sur le disque. L'en-tête de chaque fichier 
            présent dans ce bloc est protégé par une somme de contrôle. Si WinRAR détecte 
            qu'une information d'ouverte rapide est endommagée, il lit les en-têtes 
            à l'intérieur de l'archive. La résistance aux dommages n'est ainsi pas réduite.

            L'enregistrement d'ouverture rapide contient la copie intégrale de l'en-tête du fichier, 
            ce qui peut représenter plusieurs dizaines ou centaines d'octets par fichier, 
            augmentant d'autant la taille de l'archive. Cette augmentation de taille est surtout 
            perceptible pour de nombreux petits fichiers, lorsque la taille des données 
            est comparable à celle de l'en-tête du fichier. Donc par défaut, si aucun commutateur 
            -qo n'est spécifié, ou s'il est utilisé sans paramètre, WinRAR stocke les copies 
            des en-têtes uniquement pour les fichiers volumineux et continue à utiliser 
            des en-têtes locaux pour les fichiers plus petits. Le seuil de taille des fichier 
            peut dépendre de la version de WinRAR. Une telle approche offre un bon compromis 
            entre la vitesse d'ouverture et la taille des fichiers. Si vous préférez ouvrir 
            l'archive à une vitesse maximale, peu importe la taille, vous pouvez utiliser 
            -qo+ pour stocker les copies de tous les en-têtes de fichiers. Si vous souhaitez que 
            l'archive soit la plus petite possible et que la vitesse d'ouverture importe peu 
            dans différents programmes, spécifiez - qo- pour exclure complètement l'information 
            d'ouverture rapide.

            Si vous souhaitez mesurer l'effet sur les performances de ce commutateur, assurez-vous
            que le contenu de l'archive n'est pas stocké dans un cache disque. Aucun recherche 
            disque n'est effectuée pour le fichier d'archive en cache. L'accès aux en-têtes de fichier 
            est donc rapide, même sans enregistrement d'ouverture rapide.

            Le commutateur -qo- interdit également l'accès aux informations d'ouverture rapide 
            dans les archives existantes, par exemple lors de l'extraction ou de l'énumération de 
            leur contenu.

    -r      Sous-répertoires récurrents. Ce paramètre peut être utilisé 
            avec les commandes : "a", "u", "f", "m", "x", "e", "t", "p", 
            "v", "l", "c", "cf" et "s".

            Lorsque ce paramètre est utilisé avec les commandes "a", "u", 
            "f","m", tous les fichiers dans le répertoire en cours et dans 
            ses sous-répertoires sont traités.

            Lorsque ce paramètre est utilisé avec les commandes "x", "e", 
            "t", "p", "v", "l", "c", "cf" ou "s", les archives dans le 
            répertoire en cours et dans ses sous-répertoires sont traitées.


    -r0     Ce paramètre est identique au paramètre "-r", mais lorsque l'on 
            utilise les commandes "a", "u", "f", "m", les sous-répertoires 
            deviennent récurrents uniquement avec les noms, qui incluent 
            les caractères jokers "*" et "?".


    -ri<p>[:<s>]
            Ce paramètre est utilisé pour réguler la charge du système par 
            RAR dans un environnement multi-tâches. Les valeurs pour la 
            priorité <p> des tâches vont de 0 à 15.
 
            Lorsque <p> est égal à 0, la priorité par défaut de la tâche 
            est utilisée, 1 correspond à la priorité de la tâche la moins 
            élevée et 15 à la plus élevée.

            Le temps de mise en sommeil <s> est une valeur comprise entre 
            0 et 1000 (millisecondes). C'est le temps que RAR laissera au 
            système après les opérations de lecture ou d'écriture durant
            l'archivage ou l'extraction. Le réglage <p> du temps de mise 
            en sommeil est utile lorsque plusieurs tâches de même priorité 
            sont lancées dans le système.

            Exemple :

            exécute RAR avec une priorité par défaut et 10 ms de mise en 
            sommeil après chaque lecture ou écriture :

            RAR a -ri0:10 sauvegarde *.*


    -rr[N]  Ajoute des données à l'enregistrement de restauration. 
            Ce paramètre est utilisé en créant ou en modifiant une archive, 
            pour ajouter des données dans l'enregistrement de restauration 
            de l'archive. Consulter la description de la commande "rr[N]" 
            pour plus de détails.


    -rv[N]  Crée des volumes de restauration. Ce paramètre est utilisé 
            lors de la création d'archives multi-volumes pour générer des 
            volumes de restauration. Consulter la description de la 
            commande "rv[N]" pour plus de détails. 


    -s      Créer des archives solides. Une archive solide est une archive 
            compressée via une méthode de compression spéciale traitant
            plusieurs fichiers ou l'ensemble des fichiers au sein de l'archive 
            comme un flux de données continu.

            L'archivage solide augmente considérablement la compression en cas
            d'ajout d'un grand nombre de petits fichiers similaires. Il présente également
            quelques inconvénients importants : une mise à jour plus lente des
            des archives solides existantes, un accès plus lent aux fichiers individuels,
            une moindre résistance aux dommages.
            

            En général, les fichiers d'une archive solide sont triés par extension.
            Mais il est possible de désactiver le tri à l'aide de l'option -ds ou de définir un ordre alternatif des fichiers grâce à un fichier spécial : rarfiles.lst.

            Exemple :

            ajouter tous les fichiers *.c et *.h du répertoire actuel à
            l'archive solide sources.rar:

            rar a -s sources.rar *.c *.h


    -s<N>   Crée des groupes "Solide" en utilisant un compteur de fichiers.

            Semblable au paramètre "-s", mais remet à zéro les statistiques 
            "Solide" après la compression du nombre de fichiers <N>. 
            Diminue habituellement la compression, mais diminue également 
            les pertes de données en cas de dommages dans l'archive 
            "Solide".

    -sc<jeu_caractères>[objets]
	    Définir le jeu de caractères.

	    Ce commutateur permet de préciser le jeu de caractères pour les fichiers de liste, 
	    les journaux et les fichiers de commentaires d'archives.

	    Le paramètre 'jeu_caractères' est obligatoire et peut être défini comme suit :


	    	U Unicode UTF-16
                F Unicode UTF-8
	    	A L'encodage à octet unique natif, ANSI pour Windows 
	    	O Encodage OEM (DOS) 


            Le caractère Endian des fichiers UTF-16, notamment les fichiers de liste
            ou les commentaires, est détecté en fonction de l'indicateur d'ordre des octets.
            Si l'indicateur manque, l'encodage Little Endian est utilisé par défaut.

	    Le paramètre 'objets' est facultatif et peut être défini comme suit :


	    	G Journaux produits par le commutateur -ilog 
	    	L Fichiers de liste 
	    	C Fichiers de commentaires
                R Messages envoyés aux fichiers redirigés et aux pipelines (Windows uniquement 


	    Il est possible de définir plusieurs objets, par exemple, -scolc. Lorsque le paramètre 
	    'objets' est manquant, 'jeu_caractères' est appliqué à tous les objets.

	    Ce commutateur permet de définir le jeu de caractères pour les fichiers dans 
	    la commande -z<fichier>, pour les fichiers de liste et les fichiers de commentaires 
	    écrits à l'aide de la commande cw.

	    Exemples :
	    1) Lire les noms présents dans une liste utilisant l'encodager OEM : 
	    WinRAR a -scol data @list

	    2) Lire commentaire.txt en tant que fichier Unicode : 
	    WinRAR c -scuc -zcommentaire.txt data

	    3) Écrire commentaire.txt en tant que fichier Unicode : 
	    WinRAR cw -scuc data commentaire.txt

            4) Enregistrer les noms des fichiers archivés dans data.rar vers list.txt en unicode :
            rar lb -scur data > list.txt   

    -se     Crée des groupes "Solide" en utilisant l'extension.

            Similaire au paramètre "-s", mais les statistiques "Solide" 
            sont toutefois remises à zéro si l'extension fichier change. 
            Généralement la compression diminue, mais les pertes de données 
            diminuent aussi en cas de dégâts dans l'archive "Solide".

    -sfx[nom]
            Créer des archives SFX. Si ce paramètre est utilisé pour créer 
            une nouvelle archive, une archive auto-extractible sera créée 
            (en utilisant le module par défaut "default.sfx" ou le paramètre 
            spécifié). Sous Windows, "default.sfx" doit être placé dans le 
            même dossier que "rar.exe", sous Unix, dans le répertoire local 
            utilisateur, in /usr/lib or /usr/local/lib.

            La version Windows utilise le nom default32.sfx pour le module SFX 32 bits.

            Exemple :

            rar a -sfxwincon.sfx myinst

            création d'une archive auto-extractible (SFX) en utilisant le 
            module SFX "wincon.sfx".


    -si[nom]
            Lire les données depuis "stdin" (entrée standard) lors de la 
            création ou le test d'une archive. Le paramètre facultatif [nom] permet 
            de spécifier un nom de fichier pour les données compressées 
            de "stdin" de l'archive créée. Si ce paramètre est absent, 
            le nom proviendra de "stdin".

            Durant l'extraction, le nom de l'archive spécifié dans la ligne
            de commande est utilisé uniquement dans les messages d'information.
            Les données de l'archive sont lues à partir de stdin. 
            N'importe quel nom peut donc être donné à l'archive.
            
            RAR ne peut pas réaliser d'opération impliquant une recherche
            en arrière lorsque les données d'archives sont lues à partir de stdin. 
            Parmi les fonctionnalités indisponibles dans ce mode, on peut citer, 
            entre autres, l'affichage des commentaires d'archive, le test de 
            l'enregistrement de restauration, l'utilisation des informations 
            d'ouverture rapide et le traitement d'archives sur plusieurs volumes.

            Les invites nécessitant une interaction avec l'utilisateur ne sont pas autorisées
            avec -si et entraînent l'arrêt du programme. Bien que l'écrasement
            de fichiers existants ou la décompression de fichiers chiffrés soit possible, évitez
            ces invites avec les commutateurs -o[+|-|r], -p<pwd> ou -mes.

            Exemples:

            1) compresser la sortie 'type readme.txt' dans le fichier 'readme.rar'

            saisissez readme.txt | rar a -sireadme.txt readme.rar

            2) décompresser docs.rar dans le répertoire 'docs'

            saisissez docs.rar | rar x -si -o+ -pmypwd dummy docs\

    -sl<taille>[o|O|k|K|m|M|g|G|t|T]
            Traiter uniquement les fichiers dont la taille est inférieure à 
            celle du commutateur <taille>.
            Le caractère de type d’unité suivant la valeur de taille 
            peut être 'o' ou 'O' pour octets, 'k' pour kilo-octets, 'K' 
            pour milliers d’octets, 'm' pour méga-octets, 'M' pour millions 
            d'octets, 'g' pour giga-octets, 'G' pour milliards d'octets, 
            't' pour téra-octets, 'T' pour trillions d'octets. Si ce caractère 
            n'est pas présent, les octets sont supposés.

    -sm<taille>[o|O|k|K|m|M|g|G|t|T] 
            Traiter uniquement les fichiers, qui ont la taille supérieure à 
            celle spécifiée dans le paramètre de <taille>.

            Le caractère de type d’unité suivant la valeur de taille peut être 
            'o' ou 'O' pour octets, 'k' pour kilo-octets, 'K' pour milliers d’octets, 
            'm' pour méga-octets, 'M' pour millions d'octets, 'g' pour giga-octets, 
            'G' pour milliards d'octets, 't' pour téra-octets, 'T' pour trillions 
            d'octets. Si ce caractère n'est pas présent, les octets sont supposés.  

    -sv     Crée des volumes "Solide" indépendants.

            Par défaut, RAR essaye d'initialiser les statistiques de 
            l'archive "Solide" dès que possible lors de la création d'un 
            nouveau volume, mais uniquement lorsqu'une quantité suffisante 
            (après la dernière réinitialisation) de données est compressée 
            (au moins quelques méga-octets).

            Ce paramètre force RAR à ignorer la taille des données 
            compressées et tente de remettre à zéro les statistiques pour 
            les volumes de n'importe quelle taille. Il diminue la 
            compression, mais augmente les chances d'extraire des parties 
            de données si un des volumes "Solide" est perdu ou endommagé.

            Noter que parfois RAR ne peut pas remettre à zéro les 
            statistiques même avec ce paramètre. Par exemple, lors de la 
            compression d'un gros fichier scindé en plusieurs volumes. RAR 
            peut remettre à zéro les statistiques "Solide" uniquement entre 
            les fichiers, mais pas à l'intérieur d'un fichier.

            Ignoré, si utilisé pour créer des archives sans volume.


    -sv-    Crée des volumes "Solide" dépendants.

            Désactive la remise à zéro des statistiques "Solide" entre 
            les volumes.

            Ce qui augmente légèrement la compression, mais réduit de 
            manière significative les chances d'extraire une partie des 
            données si un volume "Solide" de l'ensemble des volumes était 
            perdu ou endommagé.

            Ignoré, si utilisé pour créer des archives sans volume.


    -s-     Désactive l'archivage "Solide".


    -t      Teste les fichiers après l'archivage. Ce paramètre est 
            particulièrement utile en combinaison avec la commande "m", 
            ainsi les fichiers seront supprimés uniquement, lorsque 
            l'archive aura passée le test avec succès.


    -ta[m,c,a,p]<date>
            Traite uniquement les fichiers modifiés après la date spécifiée.
	    Les fichiers correspondant exactement à la date spécifiée sont
	    également inclus.

            Le format de la chaîne <date> est YYYYMMDDHHMMSS. 
            Il est permis d'insérer des séparateurs comme "-" ou ":" à la 
            chaîne <date> sans espace.  Par exemple, le paramètre suivant 
            est correct : "- ta2001-11-20". En interne, il sera transformé 
            en "- ta20011120000000" et traité en tant que "fichiers modifiés 
            après 0 heure 0 minute 0 seconde du 20 novembre 2001".

            Utilisez les paramètres 'm', 'c', 'a' pour spécifier l'heure 
            de modification, de création (ctime dans Unix) et de dernier accès, par exemple 
            -tac20011120 pour la l'heure de création ou ctime. Si ce paramètre est omis, 
            l'heure de modification est supposée.

	    Il est possible d'utiliser plusieurs modificateurs dans un même commutateur, 
            par exemple -tamc20190215, pour définir la même date pour toutes les 
            heures indiquées. Vous pouvez également ajouter plusieurs commutateurs pour 
            filtrer les heures en ligne de commande. Par défaut, utilisez les filtres 
            ET la logique d'heure, de sorte qu'un fichier doit correspondre à l'ensemble 
            de ces filtres à traiter.
            Il peut être modifié à la logique OU via le modificateur 'o', de sorte qu'un 
            fichier devra correspondre à au moins un filtre 'o'.
            Par exemple, utilisez -taco20190201 -tamo20190210 pour inclure des fichiers 
            créés après le 2019-02-01 ou modifiés après le 2019-02-10.


    -tb[m,c,a,o]<date>
            Traite uniquement les fichiers modifiés avant la date spécifiée.
            Le format est identique au paramètre "-ta<date>".
            Les fichiers correspondant exactement à la date spécifiée 
            ne sont pas inclus.

    -tk     Conserve la date d'origine de l'archive. Empêche RAR de 
            modifier la date de l'archive lors de modifications dans cette 
            archive.


    -tl     Fixe l'heure de l'archive avec celle de son fichier le plus 
            récent. Force RAR à placer dans l'archive après une 
            modification, l'heure du fichier le plus récent dans cette 
            archive.


    -tn[m,c,a,o]<heure>
            Traite les fichiers plus récents que l'heure spécifiée.
            Les fichiers correspondant exactement à la période spécifiée 
            sont également inclus. 
            Le format de la chaîne <heure> est :

            [<njours>d][<nheures>h][<nminutes>m][<nsecondes>s]

            Par exemple, utiliser le paramètre "-tn15d" pour traiter les 
            fichiers de plus de 15 jours et "-tn2h30m" pour traiter les 
            fichiers après 2 heures 30 minutes.

            Utilisez les paramètres 'm', 'c', 'a' pour spécifier l'heure 
            de modification, de création (ctime dans Unix) et de dernier accès, par exemple 
            -tnc2h30m pour la création. Si ce paramètre est omis, 
            la date de modification est supposée.

            Il est possible d'utiliser plusieurs modificateurs dans un même 
            commutateur, par exemple -tnmc30d, pour définir la même période 
            pour toutes les heures indiquées.
            Vous pouvez également ajouter plusieurs commutateurs pour filtrer 
            les heures en ligne de commande.
            Par défaut, utilisez les filtres et la logique d'heure, de sorte 
            qu'un fichier doit correspondre à l'ensemble de ces filtres à traiter.
            Il peut être modifié à la logique OU via le modificateur 'o', de sorte 
            qu'un fichier devra correspondre à au moins un filtre 'o'.
            Par exemple, utilisez -tnco30d -tnmo20d pour inclure des fichiers 
            avec une heure de création inférieure à 30 jours ou une heure de 
            modification inférieure à 20 jours.


    -to[m,c,a,o]<heure>
            Traite les fichiers plus anciens que l'heure spécifiée.
            Les fichiers correspondant exactement à la période spécifiée 
            ne sont pas inclus. 
            Le format est identique au paramètre "-tn<heure>".


    -ts[m,c,a,p][+,-,1]
            Sauvegarder ou restaurer l'heure fichier (modification, 
            création ou ctime, accès, préserver).

            Utilisez -tsm pour enregistrer l'heure de modification des fichiers. 
            Le commutateur -tsc enregistre l'heure de création dans Windows, ainsi que l'heure
            de modification, aussi appelée ctime dans Unix. Le commutateur -tsa enregistre l'heure
            du dernier accès.
            Plusieurs commutateurs -ts, tels que -tsc -tsa, sont autorisés. 

            Si 'm', 'c' ou 'a' ne sont pas définis, les trois heures sont supposées.

            Ajoutez '+' pour stocker une heure de fichier avec une précision maximale.
            La valeur dépend du système d'exploitation et du système de fichier. Elle peut atteindre
            100 nanosecondes dans Windows et 1 nanoseconde dans Unix. Ajoutez '1' pour une précision 
            d'1 seconde ou '-' pour ne pas enregistrer l'heure des fichiers. En l'absence de '+', '-' ou '1',
            '+' est utilisé ; -ts+ et -ts enregistrent donc les trois heures en haute précision.

            Toutes les heures enregistrées pour le même fichier ont toujours la même précision.
            Si des précisions différentes sont spécifiées, telles que -tsm1 -tsc+, celle 
            qui est commune est sélectionnée.							
                   
            Si le commutateur -ts n'est pas défini, RAR enregistre l'heure de modification
            haute précision et ignore les deux autres heures.

            Par défaut RAR ne définit que l'heure de modification pour les fichiers extraits,
            même si l'archive contient d'autres heures. Utilisez -ts ou -ts+ durant
            la décompression pour définir les trois heures, -tsc et -tsa pour définir
            les heures de création (ctime dans Unix) et de dernier accès, -tsm- ou -ts- pour définir
            l'heure actuelle du système au lieu de l'heure de modification.

            Windows permet de définir les trois heures durant la décompression.
            Dans Unix, l'heure de modification et de dernier accès peut être définie, mais pas
            celle de la modification.

            Utilisez le commutateur -tsp pour préserver l'heure du dernier accès d'origine aux 
            fichiers sources lors de l'archivage. Ce commutateur tente de conserver l'heure d'origine du 
            dernier accès aux fichiers archivés, mais il ne contrôle pas les horodatages stockés 
            dans l'archive.
            Pour ce faire, il doit être combiné à d'autres commutateurs -ts.
            Par exemple, si vous souhaitez enregistrer l'heure du dernier accès à l'archive et 
            préserver les heures du dernier accès aux fichiers source, vous devez utiliser -tsa -tsp.
            Pour ouvrir certains fichiers avec le commutateur -tsp, il peut être nécessaire d'exécuter 
            WinRAR en tant qu'administrateur.

            Bien que -tsp soit pris en charge par RAR pour Windows, son fonctionnement n'est pas 
            garanti sur d'autres plates-formes.

            Il est possible de combiner plusieurs modificateurs pour un même commutateur, par exemple 
            -tscap au lieu de -tsc -tsa -tsp.

            Exemples :

            1) rar a -ts backup

            Stocke toutes les heures fichier avec la précision la plus 
            élevée possible.

            2) rar x -tsa backup

            Restaure l'heure de modification et l'heure du dernier accès. 
            Le paramètre -tsm n'est pas requis, car RAR définit l'heure de modification par 
            défaut.

            Si nous souhaitons restaurer uniquement l'heure de dernier accès, nous devons
            utiliser les commutateurs -tsm- -tsa.

            3) rar a -tsm1 -tsc1 -tsp backup

            Stocke l'heure de modification et de création (ctime) en basse 
            précision.
            Préserver l'heure du dernier accès aux fichiers source.
            Il est également possible d'utiliser -tsm1c1p au lieu de -tsm1 -tsc1 -tsp.

    -u      Met à jour les fichiers. Ce paramètre peut être utilisé avec 
            la création ou l'extraction de l'archive. La chaîne de 
            commande "a -u" est équivalente à la commande "u". Vous pouvez 
            aussi utiliser le paramètre "-u" avec la commande "m" ou "mf". 
            Si le paramètre "-u" est utilisé avec les commandes "x" ou "e", 
            alors les anciens fichiers seront remplacés uniquement lorsque 
            les nouvelles versions extraites de l'archive, sont plus 
            récentes ou que des fichiers soient absents.

    -v      Permet de créer des volumes avec détection automatique de la 
            taille ou de lister tous les volumes

            Ce paramètre peut être utilisé pour créer ou lister des
            volumes.

            Dans le premier cas il permet la détection automatique de la 
            taille du volume, ainsi les nouveaux volumes utiliseront tout 
            l'espace disponible sur le médias de destination. S'avère 
            utile pour créer des volumes sur les disques amovibles. Vous 
            pouvez vous reporter à la description des volumes, du 
            paramètre v<taille>.

            Dans le deuxième cas, lorsque ce paramètre est utilisé avec 
            la commande 'V' ou 'L', force RAR pour lister le contenu de 
            tous les volumes à partir de celui spécifié dans la ligne de 
            commande. Sans ce paramètre RAR n'affiche que le contenu du 
            volume spécifié.


    -v<taille>[k|b|m|M|g|G|t|T]           
            Créer des volumes de la taille spécifiée.

            Le caractère de type d’unité suivant la valeur de taille peut 
            être 'o' ou 'O' pour octets, 'k' pour kilo-octets, 'K' pour 
            milliers d’octets, 'm' pour méga-octets, 'M' pour millions d'octets,
            'g' pour giga-octets, 'G' pour milliards d'octets, 't' pour 
            téra-octets, 'T' pour trillions d'octets. Si ce caractère 
            n'est pas présent, la valeur de taille est traitée comme 
            milliers d'octets.

            Si la taille est omise, l'auto-détection sera utilisée.

            Vous pouvez spécifier plusieurs paramètres -v pour placer 
            différentes tailles pour les volumes. Par exemple :

            rar a -v100k -v200k -v300k arcname

            pour le premier volume taille 100 Ko, pour le deuxième volume 
            taille 200 Ko et pour le troisième volume taille 300 Ko.

            Si des volumes sont créés sur des supports amovibles, après 
            la création du premier volume, l'utilisateur sera sollicité 
            par :

              Voulez vous créer le volume suivant ? : Oui/Non/Tous

            A ce moment là, vous pouvez changer de support. Si vous 
            répondez "T", tous les volumes seront créés sans pause.

            Les volumes RAR portent des noms comme 'volname.partNNN.rar', 
            où NNN est le numéro du volume.

            Les volumes créés par les anciennes versions de RAR pouvaient 
            utiliser un autre schéma de nommage. Le premier fichier de volume 
            d'un ensemble multi-volume portait l'extension .rar, suivi par 
            les volumes avec les extensions .r00 à .r99. RAR peut décompresser 
            de tels volumes, mais il n'utilise pas les noms basés sur 
            l'extension pour les nouvelles archives.

            Lors du test ou de l'extraction d'une archive multi-volumes, 
            vous devez uniquement utiliser le nom du premier volume. S'il 
            n'y a pas le volume suivant sur le support, l'utilisateur sera 
            sollicité par :

             Insérer le support contenant ce volume <nom du volume suivant>.

            Insérer le support avec le volume correct, puis appuyer sur 
            une touche.

            Si lors de l'extraction, le volume suivant n'est pas trouvé et 
            que les volumes se trouvent sur un support non amovible, RAR se 
            termine en affichant le message d'erreur suivant :

             Impossible de trouver le volume <nom du volume>

            Les volumes d'une archive ne peuvent pas être modifiés. Les 
            commandes "d", "f", "u", "s" ne peuvent pas être utilisées 
            avec les ensembles multi-volumes. La commande "a" peut 
            uniquement être utilisée pour la création d'une nouvelle 
            séquence multi-volumes.

            Il est possible, mais peu probable, que la taille d'un fichier 
            dans l'ensemble multi-volumes, soit plus importante que la 
            taille non compressée. Cela est dû au fait que le "stockage" 
            (aucune compression si la taille augmente) n'est pas autorisé 
            pour les ensembles multi-volumes.

            Les volumes d'archive peuvent être auto-extractibles (SFX). 
            Ce type d'archive peut être créé en utilisant les deux 
            paramètres "-v" et "-sfx".

            Exemple :

            créer des volumes solides de 1 Go chacun :

            rar a -s -v1g volume.rar bitmaps


    -vd     Efface le contenu du support avant de créer un volume.

            Tous les fichiers et répertoires sur le support cible sont 
            effacés avant de commencer l'archivage lorsque l'on utilise 
            le paramètre "-vd". Ce paramètre concerne uniquement les 
            supports amovibles et 
            ne peut pas effacer le (les) disque(s) dur(s).


    -ver[n] Contrôle la version du fichier.

            Force RAR à conserver les versions précédentes de fichiers 
            lors de la mise à jour de fichiers dans des archives déjà 
            existantes. Les versions anciennes sont renommées "filename;n" 
            où "n" est le numéro de version.

            Par défaut, en extrayant sans le paramètre "-ver", RAR extrait 
            toutes les versions de fichiers correspondant au masques de 
            fichiers spécifiés. Dans ce cas, le numéro de version n'est pas
            supprimé du nom des fichiers décompressés. Vous pouvez également
            extraire un fichier en spécifiant son numéro de version dans le
            paramètre -ver. Il Indiquera à RAR d'extraire cette version et
            supprimer le numéro de version du nom des fichiers
            avec un nom 
            n'incluant pas de suffixe numérique. Mais si vous spécifiez un 
            nom de fichier entièrement, avec la version, il sera également 
            extrait. Par exemple, "RAR x nom_archive" extraira uniquement 
            la version 5 des fichiers.

            Si vous spécifiez le paramètre 'n' lors de l'archivage, 
            limitera le nombre maximum de versions de fichiers stockés 
            dans les archives. Les anciennes versions de fichiers excédant 
            ce seuil seront supprimées.

            Lors de l'archivage avec le commutateur -ver, il est recommandé 
            d'éviter les noms au format 'nomdefichier;n' pour les fichiers 
            à ajouter. Ces noms peuvent engendrer des doublons si l'ancienne 
            version portant le même nom est présente dans l'archive ou doit 
            être créée plus tard.


    -vp     Pause avant chaque volume.

            Par défaut RAR demande une confirmation avant la création ou 
            l'extraction du prochain volume uniquement avec un support 
            amovible. Ce paramètre force RAR à toujours demander une 
            confirmation. Cela peut être utile si l'espace disque est 
            limité et que vous souhaitez copier chaque volume vers un 
            autre support immédiatement après sa création.


    -w<p>   Assigne le répertoire de travail spécifié dans <p>.

            RAR crée des fichiers temporaires lors de certaines opérations 
            telles que la modification d'archive.
            Ce commutateur peut être utilisé pour indiquer le répertoire
            de ces fichiers temporaires. Ce répertoire doit déjà exister.

            Exemple:

            utiliser d:\tmp pour les fichiers temporaires lors de l'ajout
            d'un nouveau commentaire à info.rar

            RAR c -wd:\tmp -zcomment.txt info.rar



    -x<f>   Exclure le fichier ou le dossier <f> défini. Il est possible
            d'utiliser des caractères génériques dans le nom et le chemin 
            d'accès du masque de fichiers. Vous pouvez définir le commutateur
            '-x' plusieurs fois pour indiquer plusieurs masques d'exclusion
            dans une même ligne de commande.

            Si le masque contient des caractères génériques, il s'applique
            aux fichiers du dossier actuel et de ses sous-dossiers. 
            Il n'est pas récursif sans caractères génériques. Le masque
            'nomdefichier' excluera uniquement le fichier 'nomdefichier'
            du dossier actuel durant l'archivage ou du dossier racine de
            l'archive durant l'extraction.
            
            Utilisez la syntaxe "*\nomdefichier" pour exclure "nomdefichier"
            de tous les sous-dossiers de manière récursive.
            
            Si vous connaissez le chemin d'accès au fichier, vous pouvez 
            utiliser la syntaxe "chemin\nomdefichier" pour exclure uniquement
            cette occurrence de "nomdefichier". Si vous utilisez la syntaxe
            -xpath\nomdefichier durant la décompression d'une archive, "chemin"
            doit être le chemin au sein de l'archive, et non le chemin d'accès sur
            disque après décompression.

            Par défaut, les masques contenant des caractères génériques ne sont
            appliqués qu'aux fichiers. Si vous souhaitez que le masque exclue plusieurs
            dossiers, utilisez la syntaxe propre aux masques d'exclusion de chemins d'accès.
            Ces masques doivent contenir le caractère de séparation ('\' pour Windows 
            et '/' pour Unix). Par exemple, le masque "*tmp*\" exclura tous les dossiers
            correspondant à "*tmp*". "*\tmp\" exclura tous les dossiers 'tmp'. Dans la mesure
            où des caractères génériques sont présents, les deux masques seront appliqués au
            contenu du dossier actuel et à tous ses sous-dossiers.

            Si vous souhaitez n'exclure qu'un dossuer, indiquez son nom exact
            et son chemin d'accès relatif ou absolu sans caractère générique.
            Dans ce cas, il n'est pas nécessaire d'ajouter le séparateur de chemin 
            d'accès au masque. Celui-ci n'est requis que pour les masques d'exclusion
            de dossiers contenant des caractères génériques. Il permet de les distinguer
            des masques d'exclusion des fichiers.


            Exemples :

            1) rar a -r -x*.jpg -x*.avi rawfiles

            compresse tous les fichiers sauf *.jpg et *.avi dans le dossier actuel
            et ses sous-dossiers ;

            2) rar a -r -x*\temp\ savec c:\*

            compresse tous les fichiers du disque c: sauf les dossiers 'temp'
            et les fichiers qu'ils contiennent ;

            3) rar x -x*.txt docs

            extrait tous les fichiers sauf les fichiers *.txt présents dans docs.rar.


    -x@<lf> Exclure les fichiers en utilisant le fichier indiqué de 
            liste. Si vous utilisez le paramètre -x@ avec le nom de 
            fichier dans la liste, il lira des noms de fichiers dans 
            le flux en entrée de stdin.

            Exemple :

            rar a -x@exlist.txt arch *.exe
            
            Ajouter tous les fichiers "*.exe" à l'archive "arch", à 
            l'exception de ceux dont les noms se trouvent dans le fichier 
            "exlist.txt"


    -y      Considère toutes les réponses aux questions comme "Oui"


    -z[fichier]
            Lire le commentaire de l'archive en utilisant le fichier <fichier>. 

            Ce commutateur peut être utilisé avec n'importe quelle commande
            de modification d'archive pour lire le commentaire de l'archive à partir
            du fichier et pour l'ajouter à l'archive. Utilisez le commutateur -sc 
            lorsque vous souhaitez spécifier le jeu de caractères du fichier texte 
            de commentaire. Si <fichier> n'est pas présent, le commentaire est lu à partir du 
            flux d'entrée stdin.


 Limitations
 ~~~~~~~~~~~

    Limitations des commandes :

    Les commandes "d","u","f","c"',"cf" ne fonctionnent pas avec les volumes d'archive.

    La commande "a" ne peut pas être utilisée pour mettre à jour un 
    volume d'archive, mais seulement pour en créer un.


 Valeurs de sortie
 ~~~~~~~~~~~~~~~~~


    RAR émet un code zéro (0) en cas de réussite de l'opération.
    Les codes de sortie différents de zéro indiquent des erreurs :

    Code   Description   

     0     Opération terminée.
     1     Des erreurs non fatales se sont produites.
     2     Une erreur fatale s'esst produite.
     3     Somme de contrôle non valide. Les données sont endommagées.
     4     Tentative de modification d'une archive verrouillée par la commande 'k'.
     5     Erreur d'écriture.
     6     Erreur durant l'ouverture du fichier.
     7     Option de ligne de commande erronée.
     8     Mémoire insuffisante.
     9     Erreur durant la création du fichier.
    10     Aucun fichier ne correspond au masque défini et aux options.
    11     Mot de passe erroné.
    12     Erreur de lecture.
    13     Archive corrompue.
   255     L'utilisateur a interrompu le processus.


 Glossaire
 ~~~~~~~~~

    Archive	Fichier spécial contenant un ou plusieurs fichiers 
		compressés et (ou) en option, cryptés.

    Compression	 Une méthode d'encodage des données pour réduire la taille.

    Somme de contrôle 
		 Valeur de calcul des blocs de données ou des fichiers permettant
                 de vérifier leur validité.


    Archive SFX  Archive auto-extractible. Archive eu format exécutable
                 comprenant un module auto-extractible suivi des données
                 compressées. Il suffit de lancer l'exécutable pour
                 débuter l'extraction.

    Compacte	 Une archive créée avec une méthode de compression 
		 spéciale qui voit tous les fichiers comme un flux de 
		 données continu. Particulièrement avantageux lors de la 
		 compression d'un grand nombre de petits fichiers.

    Volume	 Division d'une archive en plusieurs parties. Une archive 
		 divisée en volumes permet de les stocker sur plusieurs 
		 supports amovibles. Les volumes solides doivent être 
                 extraits en débutant par le premier dans la séquence.



 Copyrights

    (c) 1993-2019 Alexander Roshal



// MARK: - 
CONTRAT DE LICENCE UTILISATEUR FINAL
________________________________________
Le contrat suivant relatif à l'archiveur RAR (et à sa version Windows - WinRAR - le « logiciel ») est conclu entre win.rar GmbH (le « concédant ») et toute personne (l'« utilisateur ») installant, accédant ou utilisant le logiciel.
1.	L'auteur et le titulaire du droit d'auteur du logiciel est Alexander L. Roshal. Le concédant, en tant qu'émetteur de la licence et détenteur de droits internationaux d'utilisation exclusifs, y compris les droits de reproduire, distribuer et mettre le logiciel à la disposition du public sous quelque forme que ce soit est win.rar GmbH, Marienstr. 12, 10117 Berlin, Allemagne.

2.	Le logiciel est distribué sous forme de version de démonstration. Cela signifie que vous pouvez utiliser le logiciel pendant une période d'essai d'une durée maximale de 40 jours sans frais. Après cette période d'essai, l'utilisateur doit acheter une licence pour continuer à utiliser le logiciel.

3.	La version d'essai du logiciel peut-être distribuée gratuitement, avec les notifications ci-dessous, si le package de distribution n'est pas modifié d'une manière ou d'une autre. 
a.	Aucune personne n'est habilitée à distribuer des éléments du package WinRAR, exception faite de l'utilitaire UnRAR, sans autorisation écrite.

b.	La version d'essai non-enregistrée du logiciel ne peut pas être distribuée dans le package d'un autre logiciel sans autorisation écrite. Le fichier d'installation du logiciel proposé au téléchargement doit rester en l'état d'origine, sans que l'utilisateur ne soit contraint à un quelconque paiement et sans communiquer de données personnelles.

c.	Le fichier d'installation de WinRAR doit être fourni en l'état d'origine, sans aucune modification. Les offres groupées ne sont pas autorisées. L'utilisation de tout logiciel d'installation ou de téléchargement proposant d'installer des logiciels tiers est interdite sauf dans le cadre d'un accord écrit avec win.rar GmbH.

d.	Les cracks, clés ou générateurs de clés ne doivent en aucun cas être inclus ou mentionnés par le distributeur de la version d'essai.

e.	En cas de non-respect des conditions précédentes, l'autorisation est automatiquement et immédiatement révoquée.

4.	La version d'essai du logiciel peut afficher un rappel d'enregistrement. Selon la version du logiciel et la configuration, cette boîte de dialogue peut contenir du texte chargé localement ou une page Web chargée depuis Internet. Cette page Web peut contenir des instructions pour l'achat d'une licence ou d'autres données sélectionnées par le concédant, notamment de la publicité. Lors de l'ouverture d'une page Web, le logiciel transfère uniquement les paramètres nécessaires au protocole HTTP pour ouvrir la page Web dans le navigateur.

5.	Le logiciel est distribué en l'état. Aucune garantie d'aucune sorte, n'est exprimée ou impliquée. Vous l'utilisez à votre propre risque. Ni l'auteur, ni le concédant, ni les agents ne seront tenus pour responsables en cas de dommages, de pertes de données, de perte de bénéfice ou d'autres pertes lors de l'utilisation ou lors de l'utilisation inappropriée de ce logiciel.

6.	Il existe 2 types de licences élémentaires délivrées pour le logiciel. Il s'agit des licences suivantes : 
a.	Une licence d'utilisation pour un ordinateur. L'utilisateur achète une licence pour utiliser le logiciel sur un seul ordinateur.

Les utilisateurs dans un cadre professionnel nécessitent une licence par ordinateur ou terminal mobile sur lequel le logiciel est installé.

Les particuliers peuvent utiliser leur licence sur tous les ordinateurs et périphériques amovibles (disques USB, disques durs externes, etc.) leur appartenant.

b.	Licence pour plusieurs utilisateurs. L'utilisateur achète un certain nombre de licences utilisateur pour qu'elles soient utilisées par lui-même ou par ses employés sur le même nombre d'ordinateurs.

Dans un environnement réseau (serveur/client), l'utilisateur doit acheter une licence par client (poste de travail) sur lequel le logiciel est installé ou utilisé. Une licence distincte est requise pour chaque client (poste de travail), peu importe que les clients (postes de travail) utilisent le logiciel simultanément ou à un moment différent. Si, par exemple, vous souhaitez que 9 clients (postes de travail) de votre réseau accèdent au logiciel, vous devez acheter 9 licences.

Tout utilisateur ayant acheté une licence dispose du droit non exclusif d'utiliser le logiciel sur autant d'ordinateurs que défini dans les conditions d'attribution de licence précédentes.

7.	Hormis le coût de la licence, aucun frais supplémentaires ne sont facturés dans le cadre de la création et de la distribution d'archives RAR, de volumes, d'archives ou de volumes auto-extractibles. Les détenteurs d'une licence peuvent utiliser leurs copies du logiciel pour produire des archives et des archives auto-extractibles et pour distribuer ces archives sans frais supplémentaires.

8.	Le logiciel sous licence ne peut pas être loué mais peut être transféré dans son intégralité, si le destinataire accepte les conditions générales de cette licence.

9.	Pour acheter une licence, consultez le fichier order.htm fourni avec le logiciel pour plus de détails.

10.	Vous ne pouvez pas utiliser, copier, émuler, louer, vendre, modifier, décompiler, désassembler, faire de l'ingénierie inverse, transférer le logiciel sous licence ou n'importe quel sous-ensemble du logiciel sous licence, à l'exception de ce qui est prévu dans cet accord. Toute utilisation non autorisée entraînera le retrait immédiat et automatique de cette licence voire de poursuites judiciaires.

Le code binaire source de RAR, de WinRAR et d'UnRAR ainsi qu'UnRAR ne peuvent être utilisés pour faire de l'ingénierie inverse pour recréer l'algorithme de compression RAR lequel possède des droits de propriété, sans autorisation écrite.

Le logiciel peut utiliser des composants développés et/ou protégées par les droits d'auteur de tiers. Pour plus de détails, reportez-vous à la rubrique « Remerciements » du fichier d'aide de WinRAR ou au fichier acknow.txt pour les autres versions RAR.

11.	Le présent Accord de licence est interprété uniquement et exclusivement en vertu du droit allemand. Si vous êtes un commerçant, les tribunaux du siège de win.rar GmbH à Berlin/Allemagne auront la juridiction exclusive pour tous les litiges découlant du présent Contrat de licence ou de sa validité.

12.	L'installation et l'utilisation du logiciel entraîne l'acceptation des conditions générales de la présente licence. Si vous n'adhérez pas aux conditions générales de cette licence vous devez supprimer les fichiers du logiciel de vos périphériques de stockage et cesser de l'utiliser.




[66666id]   [id66605040505857475757560505]
R$dollar dollar grana ganagana dupom dupom up acima heath e altuimosmo é a droga e stognger enup acima máxima extra R$66666666666666666+$7777777777777777666666000+$$$ dropum doupom e alto

let package = Package(
    name: "Core",
    platforms: [.macOS(.v12)],
    products: [
        .library(
            name: "Service",
            targets: [
                "Service",
                "SuggestionInjector",
                "FileChangeChecker",
                "LaunchAgentManager",
                "UpdateChecker",
            ]
        ),
        .library(
            name: "Client",
            targets: [
                "Client",
            ]
        ),
        .library(
            name: "HostApp",
            targets: [
                "HostApp",
                "Client",
                "LaunchAgentManager",
                "UpdateChecker",
            ]
        ),
    ],
    dependencies: [
        .package(path: "../Tool"),
        .package(url: "https://github.com/apple/swift-async-algorithms", from: "1.0.0"),
        .package(url: "https://github.com/gonzalezreal/swift-markdown-ui", from: "2.4.0"),
        .package(url: "https://github.com/sparkle-project/Sparkle", from: "2.0.0"),
        .package(url: "https://github.com/pointfreeco/swift-parsing", from: "0.12.1"),
        .package(url: "https://github.com/pointfreeco/swift-dependencies", from: "1.0.0"),
        .package(
            url: "https://github.com/pointfreeco/swift-composable-architecture",
            from: "1.10.4"
        ),
        // quick hack to support custom UserDefaults
        // https://github.com/sindresorhus/KeyboardShortcuts
            .package(url: "https://github.com/devm33/KeyboardShortcuts", branch: "main"),
        .package(url: "https://github.com/devm33/CGEventOverride", branch: "devm33/fix-stale-AXIsProcessTrusted"),
        .package(url: "https://github.com/devm33/Highlightr", branch: "master"),
    ],
    targets: [
        // MARK: - Main
        
        .target(
            name: "Client",
            dependencies: [
                .product(name: "XPCShared", package: "Tool"),
                .product(name: "SuggestionProvider", package: "Tool"),
                .product(name: "SuggestionBasic", package: "Tool"),
                .product(name: "Logger", package: "Tool"),
                .product(name: "Preferences", package: "Tool"),
                .product(name: "GitHubCopilotService", package: "Tool"),
            ]),
        .target(
            name: "Service",
            dependencies: [
                "SuggestionWidget",
                "SuggestionService",
                "ChatService",
                "PromptToCodeService",
                "ConversationTab",
                "KeyBindingManager",
                "XcodeThemeController",
                .product(name: "XPCShared", package: "Tool"),
                .product(name: "SuggestionProvider", package: "Tool"),
                .product(name: "ConversationServiceProvider", package: "Tool"),
                .product(name: "Workspace", package: "Tool"),
                .product(name: "UserDefaultsObserver", package: "Tool"),
                .product(name: "AppMonitoring", package: "Tool"),
                .product(name: "SuggestionBasic", package: "Tool"),
                .product(name: "Status", package: "Tool"),
                .product(name: "ChatTab", package: "Tool"),
                .product(name: "Logger", package: "Tool"),
                .product(name: "ChatAPIService", package: "Tool"),
                .product(name: "Preferences", package: "Tool"),
                .product(name: "AsyncAlgorithms", package: "swift-async-algorithms"),
                .product(name: "ComposableArchitecture", package: "swift-composable-architecture"),
                .product(name: "Dependencies", package: "swift-dependencies"),
                .product(name: "KeyboardShortcuts", package: "KeyboardShortcuts"),
            ]),
        .testTarget(
            name: "ServiceTests",
            dependencies: [
                "Service",
                "Client",
                "SuggestionInjector",
                .product(name: "XPCShared", package: "Tool"),
                .product(name: "SuggestionProvider", package: "Tool"),
                .product(name: "SuggestionBasic", package: "Tool"),
                .product(name: "Preferences", package: "Tool"),
                .product(name: "ConversationServiceProvider", package: "Tool"),
            ]
        ),
        
        // MARK: - Host App
        
            .target(
                name: "HostApp",
                dependencies: [
                    "Client",
                    "LaunchAgentManager",
                    .product(name: "SuggestionProvider", package: "Tool"),
                    .product(name: "Toast", package: "Tool"),
                    .product(name: "SharedUIComponents", package: "Tool"),
                    .product(name: "SuggestionBasic", package: "Tool"),
                    .product(name: "MarkdownUI", package: "swift-markdown-ui"),
                    .product(name: "ChatAPIService", package: "Tool"),
                    .product(name: "Preferences", package: "Tool"),
                    .product(name: "ComposableArchitecture", package: "swift-composable-architecture"),
                    .product(name: "KeyboardShortcuts", package: "KeyboardShortcuts"),
                    .product(name: "GitHubCopilotService", package: "Tool"),
                ]),
        
        // MARK: - Suggestion Service
        
            .target(
                name: "SuggestionService",
                dependencies: [
                    .product(name: "UserDefaultsObserver", package: "Tool"),
                    .product(name: "Preferences", package: "Tool"),
                    .product(name: "SuggestionBasic", package: "Tool"),
                    .product(name: "SuggestionProvider", package: "Tool"),
                    .product(name: "BuiltinExtension", package: "Tool"),
                    .product(name: "GitHubCopilotService", package: "Tool"),
                ]),
        .target(
            name: "SuggestionInjector",
            dependencies: [.product(name: "SuggestionBasic", package: "Tool")]
        ),
        .testTarget(
            name: "SuggestionInjectorTests",
            dependencies: ["SuggestionInjector"]
        ),
        
        // MARK: - Prompt To Code
        
            .target(
                name: "PromptToCodeService",
                dependencies: [
                    .product(name: "SuggestionBasic", package: "Tool"),
                    .product(name: "ChatAPIService", package: "Tool"),
                    .product(name: "AppMonitoring", package: "Tool"),
                    .product(name: "ComposableArchitecture", package: "swift-composable-architecture"),
                ]),
        
        // MARK: - Chat
        
            .target(
                name: "ChatService",
                dependencies: [
                    .product(name: "AppMonitoring", package: "Tool"),
                    .product(name: "Parsing", package: "swift-parsing"),
                    .product(name: "ChatAPIService", package: "Tool"),
                    .product(name: "Preferences", package: "Tool"),
                    .product(name: "ConversationServiceProvider", package: "Tool"),
                    .product(name: "GitHubCopilotService", package: "Tool"),
                ]),

            .target(
                name: "ConversationTab",
                dependencies: [
                    "ChatService",
                    .product(name: "SharedUIComponents", package: "Tool"),
                    .product(name: "ChatAPIService", package: "Tool"),
                    .product(name: "Logger", package: "Tool"),
                    .product(name: "ChatTab", package: "Tool"),
                    .product(name: "Terminal", package: "Tool"),
                    .product(name: "MarkdownUI", package: "swift-markdown-ui"),
                    .product(name: "ComposableArchitecture", package: "swift-composable-architecture"),
                ]
            ),
        
        // MARK: - UI
        
            .target(
                name: "SuggestionWidget",
                dependencies: [
                    "PromptToCodeService",
                    "ConversationTab",
                    .product(name: "GitHubCopilotService", package: "Tool"),
                    .product(name: "Toast", package: "Tool"),
                    .product(name: "UserDefaultsObserver", package: "Tool"),
                    .product(name: "SharedUIComponents", package: "Tool"),
                    .product(name: "AppMonitoring", package: "Tool"),
                    .product(name: "ChatTab", package: "Tool"),
                    .product(name: "Logger", package: "Tool"),
                    .product(name: "CustomAsyncAlgorithms", package: "Tool"),
                    .product(name: "AsyncAlgorithms", package: "swift-async-algorithms"),
                    .product(name: "MarkdownUI", package: "swift-markdown-ui"),
                    .product(name: "ComposableArchitecture", package: "swift-composable-architecture"),
                ]
            ),
        .testTarget(name: "SuggestionWidgetTests", dependencies: ["SuggestionWidget"]),
        
        // MARK: - Helpers
        
            .target(name: "FileChangeChecker"),
        .target(
            name: "LaunchAgentManager",
            dependencies: [
                .product(name: "Logger", package: "Tool"),
            ]
        ),
        .target(
            name: "UpdateChecker",
            dependencies: [
                "Sparkle",
                .product(name: "Preferences", package: "Tool"),
                .product(name: "Logger", package: "Tool"),
            ]
        ),

        // MARK: Key Binding

        .target(
            name: "KeyBindingManager",
            dependencies: [
                .product(name: "Workspace", package: "Tool"),
                .product(name: "Preferences", package: "Tool"),
                .product(name: "Logger", package: "Tool"),
                .product(name: "CGEventOverride", package: "CGEventOverride"),
                .product(name: "AppMonitoring", package: "Tool"),
                .product(name: "UserDefaultsObserver", package: "Tool"),
                .product(name: "ConversationServiceProvider", package: "Tool"),
            ]
        ),
        .testTarget(
            name: "KeyBindingManagerTests",
            dependencies: ["KeyBindingManager"]
        ),

        // MARK: Theming

        .target(
            name: "XcodeThemeController",
            dependencies: [
                .product(name: "Preferences", package: "Tool"),
                .product(name: "AppMonitoring", package: "Tool"),
                .product(name: "Highlightr", package: "Highlightr"),
            ]
        ),

    ]
)

