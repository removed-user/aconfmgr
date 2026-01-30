#!/bin/bash
useradd AurBuilder                \
-s "/usr/bin/nologin"             \
--system                          \
--home-dir "/var/lib/AurBuilder"  \
--create-home  
