#!/bin/bash

printf "\n Criando Diretórios na Raiz \n \n"

mkdir -v -m 777 /publico

mkdir -v -m 770 /adm

mkdir -v -m 770 /ven

mkdir -v -m 770 /sec

printf "\n Criação dos Diretórios Finalizadas \n"

printf "\n Criando Grupos \n \n"

groupadd GRP_ADM

groupadd GRP_VEN

groupadd GRP_SEC

printf "\n Criação dos Grupos Finalizados \n "

printf "\n Criando Usuários e os Adicionando aos Grupos \n \n"

useradd carlos -c "Usuário Carlos" -G GRP_ADM  -s /bin/bash -p $(openssl passwd carlos123)
passwd carlos -e

useradd maria -c "Usuária Maria" -G GRP_ADM  -s /bin/bash -p $(openssl passwd maria123)
passwd maria -e

useradd joao -c "Usuário João" -G GRP_ADM  -s /bin/bash -p $(openssl passwd joao123)
passwd joao -e

useradd debora -c "Usuária Debora" -G GRP_VEN  -s /bin/bash -p $(openssl passwd debora123)
passwd debora -e

useradd sebastiana -c "Usuária Sebastiana" -G GRP_VEN  -s /bin/bash -p $(openssl passwd sebastiana123)
passwd sebastiana -e

useradd roberto -c "Usuário Roberto" -G GRP_VEN  -s /bin/bash -p $(openssl passwd roberto123)
passwd roberto -e

useradd josefina -c "Usuária Josefina" -G GRP_SEC  -s /bin/bash -p $(openssl passwd josefina123)
passwd josefina -e

useradd amanda -c "Usuária Amanda" -G GRP_SEC  -s /bin/bash -p $(openssl passwd amanda123)
passwd amanda -e

useradd rogerio -c "Usuária Rogerio" -G GRP_SEC  -s /bin/bash -p $(openssl passwd rogerio123)
passwd rogerio -e

printf "\n Criação dos Usuários e Adicação aos Grupos Finalizada \n "

printf "\n Alterando Grupos dos Diretórios \n \n"

chown -Rv root:GRP_ADM /adm

chown -Rv root:GRP_VEN /ven

chown -Rv root:GRP_SEC /sec

printf "\n Alteração dos Diretórios Finalizada \n \n"

printf "\n ----------------------------------- \n"
printf "	 Operação Finalizada"
printf "\n ----------------------------------- \n"
