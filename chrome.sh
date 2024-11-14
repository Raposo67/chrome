#!/bin/bash
apt update
# INSTALAÇÃO
clear
sleep 2
echo -e """
           	   ((((((((((((((((((((
                 ((((((((((((((((((((((((((((
             ((((((((((((((((((((((((((((((((/
           ,((((((((((((((((((((((((((((((((
          (((((((((((((                ((/
         ,/(((((((((
        ,,,,,*((((
       ,,,,,,,,,,
       ,,,,,,,,,,              (((((((((((((((((((((((
      ,,,,,,,,,,               (((((((((((((((((((((((.
       ,,,,,,,,,,              (((((((((((((((((((((((
       ,,,,,,,,,,              ,,,,,,,,,,,,,((((((((((
        ,,,,,*((((,                        ((((((((((/
         ,((((((((((                      (((((((((((
          (((((((((((((                /((((((((((((
            ((((((((((((((((((((((((((((((/(((((((
              ((((((((((((((((((((((((((((((((((
                 ((((((((((((((((((((((((((((
                     *((((((((((((((((((("""
echo ""
echo -e "		      [NAVEGADOR CHROME]		"
echo ""
echo "	[1] INSTALAR O NAVEGADOR"
echo "	[2] APAGAR"
echo "	[0] SAIR " 
echo ""

################### INTALAÇÃO ########################
read -p "	 >> " resposta
if [ $resposta == 1 ]; then
 echo "deb http://ftp.debian.org/debian stable main contrib non-free" >> /etc/apt/sources.list
 apt update
 if [ "$?" == 0 ]; then
  apt install chromium chromium-l10n
 else
  echo "ocorreu um erro!"
 fi
 echo "Corrijindo Erros de compatibilidades..."
 sed -i "s/%U/--no-sandbox/g" /usr/share/applications/chromium.desktop
 echo "CHROME INSTALADO VEJA NO MENU DE APLICATIVOS"
#######################################################

################# APAGAR O CHROME #####################
elif [ $resposta == 2 ]; then
 apt purge chromium
 sudo sed -i '/deb http:\/\/ftp.debian.org\/debian stable main contrib non-free/d' /etc/apt/sources.list
 apt update
elif [ $resposta == 0 ]; then
 echo "Saindo..."
 sleep 2
 exit
else
 echo "opção invalida"
 exit
fi

#########################################################

# Não Deixa Ninguem Te Diminuir, Anda Sempre de cabeça eeguida, porque No Final Tudo Sempre Dá Certo!
