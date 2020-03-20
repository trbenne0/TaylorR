#!/bin/bash
# Case state to determine make of car being driven

read -p 'Enter the model of car you drive: ' carmake



case $carmake in
    Colorado | Commodore | Astra | Acadia | Equinox )
            echo "You drive a Holden."
            ;;
    Focus | Mondeo | Escape | Fiesta | Ranger )
            echo "you drive a Ford."
            ;;
    Yaris | Corolla | Camry | Supra | Klugar )
            echo "you drive a Toyota."
            ;;

*)
            echo "I dont know what you drive."
            ;;
esac
        
            