#!/bin/bash
#echo "deb http://ftp.debian.org/debian stable main contrib non-free" >> /etc/apt/sources.list
#apt update
if [ "$?" == 0 ];
then
 apt install chromium chromium-l10n
else
 echo "ocorreu um erro!"
fi
echo "Corrijindo Erros de compatibilidades..."
sed -i "s/%U/--no-sandbox/g" /usr/share/applications/chromium.desktop
