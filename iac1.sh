#!/bin/bash

echo "Criando diretórios..."

mkdir /casa

mkdir /gente
mkdir /gatos
mkdir /dogos

echo "Criando grupos de usuários"

groupadd GRP_GNT
groupadd GRP_CAT
groupadd GRP_DOG

echo "Criando usuários..."

useradd pessoa1 -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_GNT
useradd pessoa2 -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_GNT
useradd gato1 -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_CAT
useradd gato2 -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_CAT
useradd dogo1 -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_DOG
useradd dogo2 -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_DOG

echo "Especificando permissões dos diretórios..."

chown root:GRP_GNT /gente 
chown root:GRP_CAT /gatos
chown root:GRP_DOG /dogos

chmod 777 /casa
chmod 770 /gente
chmod 770 /gatos
chmod 770 /dogos

echo "Fim"







