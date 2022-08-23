#!/bin/bash

echo "Iniciando..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

useradd carlos -c "Carlos Almeida" -s /bin/bash -m -p$(openssl passwd Senha123) -G GRP_ADM
useradd maria -c "Maria Cabral" -s /bin/bash -m -p$(openssl passwd Senha123) -G GRP_ADM
useradd joao -c "João Torres" -s /bin/bash -m -p$(openssl passwd Senha123) -G GRP_ADM
useradd debora -c "Débora Nascimento" -s /bin/bash -m -p$(openssl passwd Senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana Santos" -s /bin/bash -m -p$(openssl passwd Senha123) -G GRP_VEN
useradd roberto -c "Roberto de Jesus" -s /bin/bash -m -p$(openssl passwd Senha123) -G GRP_VEN
useradd josefina -c "Josefina Santos" -s /bin/bash -m -p$(openssl passwd Senha123) -G GRP_SEC
useradd amanda -c "Amanda Lima" -s /bin/bash -m -p$(openssl passwd Senha123) -G GRP_SEC
useradd rogerio -c "Rogério Leal" -s /bin/bash -m -p$(openssl passwd Senha123) -G GRP_SEC

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
chown root:root /publico
 
chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec







echo "Finalizado com sucesso!"
