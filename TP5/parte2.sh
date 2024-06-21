#!/bin/bash
# Para la parte 2 elegi el inciso 7
echo "Ingrese un nombre"
read nombre
echo "El genero es: "
#If que detecta si nombre el nombre ingresado en la api es "male" o "female", y lo traduce al español
if [ $( curl -s https://api.genderize.io/?name=$nombre | jq -r ".gender"  ) = "male" ]
then
    echo "Masculino"
else
    echo "Femenino"
fi

