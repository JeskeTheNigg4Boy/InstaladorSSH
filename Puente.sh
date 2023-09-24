#!/bin/bash

read -p "Ingresa la dirección IP del servidor remoto: " remote_ip

ssh-keygen

ssh-copy-id "pablo@$remote_ip"

if [ $? -eq 0 ]; then
  echo "La clave SSH se ha añadido exitosamente al servidor remoto."
else
  echo "Se produjo un error al añadir la clave SSH al servidor remoto."
fi
