#!/bin/bash

function prompt_user {
    echo "¿Cuántos archivos hay en el directorio actual?"
    read guess
}

num_files=$(ls -1 | wc -l)
guess=-1

while [[ $guess -ne $num_files ]]
do
    prompt_user
    if [[ $guess -lt $num_files ]]; then
        echo "Demasiado bajo. Inténtalo de nuevo."
    elif [[ $guess -gt $num_files ]]; then
        echo "Demasiado alto. Inténtalo de nuevo."
    fi
done

echo "¡Felicidades! Has adivinado correctamente."
