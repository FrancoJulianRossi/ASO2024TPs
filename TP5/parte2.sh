#!/bin/bash
# Para la parte 2 elegi el inciso 7
echo "Ingrese un nombre"
read nombre
echo "El genero es: "
curl -s https://api.genderize.io/?name=$nombre | jq -r ".gender" 
echo "Male = masculino // Female = femenino"
