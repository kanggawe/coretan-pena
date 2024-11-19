Yang perlu skrip untuk backup mikrotik ke email silahkan di comot.
#### SILAHKAN DI EDIT SESUAI DENGAN KEBUTUHAN ####
#email klaian yang akan di kirimi file backup
:local toemail "xxxxxxxxxx@gmail.com"
#email kalian yang di gunakan untuk mengirim file backuo dari mikrotik 
:local fromemail "xxxxxxxx@gmail.com"
#A mail server (jangan di edit jika pakai gmail)
:local emailserver "74.125.200.108"
:local password "*****"
############## JANGAN DI EDIT KARENA BISA ERROR ##############
:local sysname [/system identity get name]
:local textfilename
:local backupfilename
:local time [/system clock get time]
:local date [/system clock get date]
:local newdate "";
:for i from=0 to=([:len $date]-1) do={ :local tmp [:pick $date $i];
:if ($tmp !="/") do={ :set newdate "$newdate$tmp" }
:if ($tmp ="/") do={}
}
#check for spaces in system identity to replace with underscores
:if ([:find $sysname " "] !=0) do={
:local name $sysname;
:local newname "";
:for i from=0 to=([:len $name]-1) do={ :local tmp [:pick $name $i];
:if ($tmp !=" ") do={ :set newname "$newname$tmp" }
:if ($tmp =" ") do={ :set newname "$newname_" }
}
:set sysname $newname;
}
:set textfilename ($"newdate" . "-" . $"sysname" . ".rsc")
:set backupfilename ($"newdate" . "-" . $"sysname" . ".backup")
:execute [/export show-sensitive file=$"textfilename"]
:execute [/system backup save name=$"backupfilename"]
#Allow time for export to complete
:delay 15s
#SKRIP MENGIRIN FILE BACKUP
:log info "Emailing backups"
/tool e-mail send to=$"toemail" from=$"fromemail" port=587 subject="[Mikrotik Backup Export] $sysname $time" file=$"textfilename" user=$"fromemail" password=$"password"
#Mengirim email dengan format yang lain
:local time [/system clock get time]
/tool e-mail send to=$"toemail" from=$"fromemail" port=587 subject="[Mikrotik Backup] $sysname $time" file=$"backupfilename" user=$"fromemail" password=$"password"
#JEDA UNTUK MEMASTIKAN PROSES PRNGIRIMAN SELESAI
:delay 50s
#MENGHAPUS SALINAN DI DISK MIKROTIK AGAR TIDAK PENUH
/file remove $textfilename
/file remove $backupfilename
