#!/bin/bash

echo "Criando Diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando Grupos de Usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando Usuários..."

useradd julyanne -m -s /bin/bash  -G GRP_ADM
passwd -e julyanne
useradd maria -m -s /bin/bash  -G GRP_ADM
passwd -e maria
useradd joao -m -s /bin/bash  -G GRP_ADM
passwd -e joao
useradd debora -m -s /bin/bash -G GRP_VEN
passwd -e debora
useradd sebastiao -m -s /bin/bash -G GRP_VEN
passwd -e joao
useradd gleibson -m -s /bin/bash -G GRP_VEN
passwd -e gleibson
useradd valentina -m -s /bin/bash -G GRP_SEC
passwd -e valentina
useradd rosa -m -s /bin/bash -G GRP_SEC
passwd -e rosa
useradd pedro -m -s /bin/bash -G GRP_SEC
passwd -e pedro



echo "Permissões dos Diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Script Finalizado"

