#!/bin/bash

animate_text() {
    local text="$1"
    local delay="$2"

    for (( i = 0; i < ${#text}; i++ )); do
        printf "${text:$i:1}"

        if [[ "${text:$i:1}" == $'\n' ]]; then
            sleep "$delay"
        else
            sleep "$delay"
        fi
    done
    echo 
}


animate_text "Hello, Friend!" 0.06
animate_text "Challenge by Iftixor Bo'riboyev" 0.06

echo -e "\nRead:"
echo -e "Fix the syntax error in the Python script to print the flag."

