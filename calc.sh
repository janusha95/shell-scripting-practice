#! /usr/bin/env bash

# When the program is first loaded, display a greeting to the user.
echo "Welcome to the calculator program"
# Then, display a menu that outlines the possible operations:
  # Add
  # Subtract
  # Exit
echo "Please make a selection:"
echo "Add"
echo "Subtract"
echo "Exit"
# Then, capture the user selection.
read selection

case $selection in
# If the selection matches a supported operation, execute the operation.
    "Add")
        echo "User has selected 'Add'"
    ;;
    "Subtract")
        echo "User has selected 'Subtract'"
    ;; 
    "Exit")
        echo "User has selected 'Exit'"
    ;;
# If the selection does not match a support operation, display an error message.    
    *)
        echo "Unsupported operation: $selection"
        echo "Please try again"
    ;;    
esac
# When the operation is complete, redisplay the menu.
