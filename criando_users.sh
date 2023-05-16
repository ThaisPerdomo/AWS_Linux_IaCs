#!/bin/bash

echo "Criando users"

useradd user1 -c "user1" -s /bin/bash -m -p $(openssl passwd Senha123)
passwd user1 -e

useradd user2 -c "user1" -s /bin/bash -m -p $(openssl passwd Senha123)
passwd user2 -e

echo "pronto"
