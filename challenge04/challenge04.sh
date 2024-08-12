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
animate_text "Challenge by Alimjan" 0.06

echo -e "\nRead:"
echo -e "You have to hack user called 'challenge03' to obtain flag"

read -p "Do you wanna hint? (yes/no): " response
if [ $response = "yes" ]; then
    echo -e "\nHint:"
    echo -e "Password from 1111 to 4444 ;)"
else
    echo "Good Luck))"
fi