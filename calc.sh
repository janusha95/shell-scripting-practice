#! /usr/bin/env bash

# When the program is first loaded, display a greeting to the user.
echo "Welcome to the calculator program"
echo $'\r'
# Keep promting the user for input until they exit the program
while true; do
    # Then, display a menu that outlines the possible operations:
    # Add
    # Subtract
    # Exit
    echo "Please make a selection:"
    echo $'\r'
    echo "1.Add"
    echo "2.Subtract"
    echo "3.Multiplication"
    echo "4.Division"
    echo "5.Exit"
    # Then, capture the user selection.
    read selection
    if [[ $selection -lt 5 ]] ; then
        # Get the user inputs 
            echo "Please enter first number"
            read first_number
            echo "Please enter second number"
            read second_number
    fi
    case $selection in
    # If the selection matches a supported operation, execute the operation.
        "1"|"Add")
            echo "The sum of $first_number and $second_number is"
            expr $first_number + $second_number
        ;;
        "2"|"Subtract")
            echo "The difference of $first_number and $second_number is"
            expr $first_number - $second_number
        ;;
        "3"|"Multiplication")
            echo "The product of $first_number and $second_number is"
            expr $first_number \* $second_number
        ;;
        "4"|"Division")
            echo "The remainder of $first_number and $second_number is"
            expr $first_number / $second_number
        ;;
        "5"|"Exit")
            echo "Hope to see you soon."
            exit 0
        ;;
    # If the selection does not match a support operation, display an error message.    
        *)
            echo "Unsupported operation: $selection"
            echo "Please try again"
        ;;   
    esac
    echo $'\r' 
done