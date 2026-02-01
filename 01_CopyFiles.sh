CreateDir etc/dbus-1/system.d 
CreateDir /etc/gnupg/openpgp-revocs.d
CreateDir /etc/gnupg/private-keys-v1.d
CreateDir files/etc/systemd/system/basic.target.wants/

SetFileProperty /var/log/journal mode 00700
SetFileProperty '/var/log/journal/remote' mode 00700
CreateFile /var/log/btmp 00600  > /dev/null
CreateFile /var/log/lastlog 00600 > /dev/null
CopyFile /etc/dirmngr.conf
CopyFile /usr/lib/systemd/system/basic.target
CopyFile /usr/lib/systemd/system/systemd-homed.service
CopyFile /usr/lib/systemd/system/zfs.target
IgnorePath /etc/gnupg/S.gpg-agent.ssh
IgnorePath /etc/gnupg/S.dirmngr 
IgnorePath etc/gnupg/S.gpg-agent.browser
IgnorePath etc/gnupg/S.gpg-agent.extra
IgnorePath etc/gnupg/S.gpg-agent







CopyFile /etc/gnupg/gpg-agent.conf
CopyFile /etc/gnupg/gpg.conf
CopyFile /etc/gnupg/private-keys-v1.d/11D6863DCB49D37DACC54D55C287CAA9FD3ACAAD.key
CopyFile /etc/gnupg/private-keys-v1.d/34A70B981069547DDCCEAEFD3FADC8BCB6B113E7.key
CopyFile /etc/gnupg/pubring.gpg
CopyFile /etc/gnupg/pubring.gpg~
CopyFile /etc/gnupg/secring.gpg
CopyFile /etc/gnupg/trustdb.gpg
CopyFile /etc/locale.gen
CopyFile etc/pacman.d/openpgp-revocs.d/BAB58BBAEF1C5C59265C031CC4ABC716692AA6B2.rev
CopyFile etc/pacman.d/pacman.custom.example
CopyFile etc/pacman.d/private-keys-v1.d/C7031B5B5495485A638199A919E1D13E8A19767A.key
CopyFile etc/pacman.d/pubring.kbx
CopyFile etc/pacman.d/pubring.kbx~
CopyFile etc/pacman.d/tofu.db
CopyFile etc/pacman.d/trustdb.gpg
CopyFile etc/paru.conf
CopyFile /usr/lib/systemd/user/dbus-broker.service
CopyFile /etc/systemd/system/dbus.socket
CopyFile /etc/systemd/system/basic.target.wants/zfs.target
CopyFile /etc/systemd/system/basic.target.wants/NetworkManager.service
CopyFile /etc/systemd/system/basic.target.wants/systemd-networkd.service
CopyFile /etc/systemd/system/basic.target.wants/systemd-resolved.service
CopyFile /etc/systemd/system/basic.target.wants/pacman-init.service
CreateDir etc/dbus-1/system.d 
CreateDir /etc/gnupg/openpgp-revocs.d
CreateDir /etc/gnupg/private-keys-v1.d
CreateDir files/etc/systemd/system/basic.target.wants/

SetFileProperty /var/log/journal mode 00700
SetFileProperty '/var/log/journal/remote' mode 00700
CreateFile /var/log/btmp 00600  > /dev/null
CreateFile /var/log/lastlog 00600 > /dev/null
CopyFile /etc/dirmngr.conf
CopyFile /usr/lib/systemd/system/basic.target
CopyFile /usr/lib/systemd/system/systemd-homed.service
CopyFile /usr/lib/systemd/system/zfs.target
IgnorePath /etc/gnupg/S.gpg-agent.ssh
IgnorePath /etc/gnupg/S.dirmngr 
IgnorePath etc/gnupg/S.gpg-agent.browser
IgnorePath etc/gnupg/S.gpg-agent.extra
IgnorePath etc/gnupg/S.gpg-agent







CopyFile /etc/gnupg/gpg-agent.conf
CopyFile /etc/gnupg/gpg.conf
CopyFile /etc/gnupg/private-keys-v1.d/11D6863DCB49D37DACC54D55C287CAA9FD3ACAAD.key
CopyFile /etc/gnupg/private-keys-v1.d/34A70B981069547DDCCEAEFD3FADC8BCB6B113E7.key
CopyFile /etc/gnupg/pubring.gpg
CopyFile /etc/gnupg/pubring.gpg~
CopyFile /etc/gnupg/secring.gpg
CopyFile /etc/gnupg/trustdb.gpg
CopyFile /etc/locale.gen
CopyFile etc/pacman.d/openpgp-revocs.d/BAB58BBAEF1C5C59265C031CC4ABC716692AA6B2.rev
CopyFile etc/pacman.d/pacman.custom.example
CopyFile etc/pacman.d/private-keys-v1.d/C7031B5B5495485A638199A919E1D13E8A19767A.key
CopyFile etc/pacman.d/pubring.kbx
CopyFile etc/pacman.d/pubring.kbx~
CopyFile etc/pacman.d/tofu.db
CopyFile etc/pacman.d/trustdb.gpg
CopyFile etc/paru.conf
CopyFile /usr/lib/systemd/user/dbus-broker.service
CopyFile /etc/systemd/system/dbus.socket
CopyFile /etc/systemd/system/basic.target.wants/zfs.target
CopyFile /etc/systemd/system/basic.target.wants/NetworkManager.service
CopyFile /etc/systemd/system/basic.target.wants/systemd-networkd.service
CopyFile /etc/systemd/system/basic.target.wants/systemd-resolved.service
CopyFile /etc/systemd/system/basic.target.wants/pacman-init.service
