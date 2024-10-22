#!/bin/bash
# TODOS OS COMANDOS EXECULTADOS AUTOMATICAMENTE ESTÃO NO FINAL DO SCRIPT



# INSTALAÇÃO
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

############### COMANDOS DA OPÇÃO 1#################
#echo "deb http://ftp.debian.org/debian stable main contrib non-free" >> /etc/apt/sources.list
#apt update
#apt install chromium chromium-l10n
#sed -i "s/%U/--no-sandbox/g" /usr/share/applications/chromium.desktop
#########################################

############### COMANDOS DA OPÇÃO 2 #################
#apt purge chromium
#sudo sed -i '/deb http:\/\/ftp.debian.org\/debian stable main contrib non-free/d' /etc/apt/sources.l>
#apt update
#########################################
