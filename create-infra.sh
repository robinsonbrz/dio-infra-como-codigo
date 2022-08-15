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
# poderia ter utilizado o: usermod -G <grupos-para onde-vai separados por virgula> <nome-do-usuaraio>
useradd carlos -m -s /bin/bash $(openssl passd -crypt Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash $(openssl passd -crypt Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash $(openssl passd -crypt Senha123) -G GRP_ADM

useradd debora -m -s /bin/bash $(openssl passd -crypt Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash $(openssl passd -crypt Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash $(openssl passd -crypt Senha123) -G GRP_VEN

useradd josefina -m -s /bin/bash $(openssl passd -crypt Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash $(openssl passd -crypt Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash $(openssl passd -crypt Senha123) -G GRP_SEC

# determinando owner dos diretorios
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

# permissão dos diretórios
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico
