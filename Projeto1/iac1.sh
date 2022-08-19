#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /fin
mkdir /rh
mkdir /it

echo "Criando grupos de usuários..."

groupadd GRP_FIN
groupadd GRP_RH
groupadd GRP_IT

echo "Criando usuários..."

useradd thiago -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_FIN
useradd cyro -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_FIN
useradd margareth -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_FIN

useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_RH
useradd ricardo -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_RH
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_RH

useradd cesar -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_IT
useradd gabriela -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_IT
useradd antonio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_IT

echo "Especificando permissões dos diretórios...."

chown root:GRP_FIN /fin
chown root:GRP_RH /rh
chown root:GRP_IT /it

chmod 770 /fin
chmod 770 /rh
chmod 770 /it
chmod 777 /publico

echo "Fim....."

