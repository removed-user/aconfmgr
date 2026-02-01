SetFileProperty /var/log/journal mode 00700
SetFileProperty '/var/log/journal/remote' mode 00700
CreateFile /var/log/btmp 00600  > /dev/null
CreateFile /var/log/lastlog 00600 > /dev/null
