#!/bin/bash

#En este ejercicio elijire la opcion 3 de hacer una calculadora simple

echo "Ingrese 1 para sumar"

echo "Ingrese 2 para restar"

echo "Ingrese 3 para multiplicar"

echo "Ingrese 4 para dividir"

read opcion

case $opcion in
    1)
        echo "Eligio sumar"
        echo "Ingrese el primer numero"
        read x
        echo "Ingrese el segundo numero"
        read y
        echo "El resultado de la suma es:" $(( $x + $y ))
        ;;
    2)
        echo "Eligio restar"
        echo "Ingrese el primer numero"
        read x
        echo "Ingrese el segundo numero"
        read y
        echo "El resultado de la resta es: "$(( $x - $y ))
        ;;
    3)
        echo "Eligio multiplicar"
        echo "Ingrese el primer numero"
        read x
        echo "Ingrese el segundo numero"
        read y
        echo "El resultado de la multiplicacion es: "$(( $x * $y ))
        ;;
    4)
        echo "Eligio dividir"
        echo "Ingrese el dividendo"
        read x
        echo "Ingrese el divisor"
        read y
        if [ $y -eq 0 ]
        then
            echo "No se puede dividir por 0"
        else
            echo "El resultado de la division es: "$(( $x / $y ))
        fi
        ;;
    *)
        echo "Opcion no valida"
        ;;
esac