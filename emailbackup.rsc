/system/backup/save name=Routerku

:delay 5

/tool/e-mail/send to="emailtujuan@mail.com" subject="Routerku" body="Backup rutin routerku" file="Routerku.backup" tls=starttls

:delay 5

/file/remove Routerku.backup
