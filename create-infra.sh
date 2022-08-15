#!/bin/bash

#Diretorios
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

# grupos
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

# usuarios
useradd carlos -m -s /bin/bash $(openssl passd -crypt Senha123)
useradd maria -m -s /bin/bash $(openssl passd -crypt Senha123)
useradd joao -m -s /bin/bash $(openssl passd -crypt Senha123)

useradd debora -m -s /bin/bash $(openssl passd -crypt Senha123)
useradd sebastiana -m -s /bin/bash $(openssl passd -crypt Senha123)
useradd roberto -m -s /bin/bash $(openssl passd -crypt Senha123)

useradd josefina -m -s /bin/bash $(openssl passd -crypt Senha123)
useradd amanda -m -s /bin/bash $(openssl passd -crypt Senha123)
useradd rogerio -m -s /bin/bash $(openssl passd -crypt Senha123)


