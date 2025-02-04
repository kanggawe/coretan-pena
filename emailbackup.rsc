/system/backup/save name=Routerku

:delay 5

/tool/e-mail/send to="emailtujuan@mail.com" subject="Routerku" body="Backup rutin routerku" file="Routerku.backup" tls=starttls

:delay 5

/file/remove Routerku.backup

/system backup save name=routerku
/export file=backupmikrotik 

:delay delay-time=5s

/tool e-mail send to="esanet.id@gmail.com" subject="Routerku" body="Backup rutin routerku" file="routerku.backup" start-tls=yes

/tool e-mail send to="esanet.id@gmail.com" subject="$[/system identity get name] export" \ body=" configuration file $[/system clock get date]" file=backupmikrotik.rsc

:delay delay-time=5s

/file remove Routerku.backup
