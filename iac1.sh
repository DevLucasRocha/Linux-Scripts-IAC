#!/bin/bash

echo "Criando grupo de usuários"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários"

useradd lucas -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd henrique -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd souza -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd santana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd rocha -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd santos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd coroa -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd nala -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd let -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Criando diretórios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec


echo "Especificando permissões dos diretórios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec      

echo "Finalizado com sucesso!"