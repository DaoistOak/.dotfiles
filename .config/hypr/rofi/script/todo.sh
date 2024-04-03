#!/usr/bin/env bash

# Define the file to store todo items
TODO_FILE="$HOME/Documents/todo.txt"
dir="$HOME/.config/rofi/themes"
theme="todo"
rofi_cmd="rofi -dmenu -theme ${dir}/${theme}.rasi"

# Function to display todo list
show_todo() {
    while true; do
        todos=()
        while IFS= read -r line; do
            todos+=("$line")
        done < "$TODO_FILE"

        formatted_todos=()
        for todo in "${todos[@]}"; do
            if [[ $todo == *"-"* ]]; then
                formatted_todos+=("$(echo "$todo")")
            elif [[ $todo == *"✓"* ]]; then
                formatted_todos+=("$(echo "$todo")")
            else
                formatted_todos+=("$todo")
            fi
        done

        selected=$(printf "%s\n" "${formatted_todos[@]}" | ${rofi_cmd} -p "TODO List" -mesg "Select an item to toggle completion" -format i)

        if [[ -n $selected ]]; then
            toggle_completion "${todos[$selected]}"
        else
            break
        fi
    done
}

# Function to toggle completion status of todo item
toggle_completion() {
    todo="$1"
    if [[ $todo == *"-"* ]]; then
        sed -i "s/$todo/✓ ${todo//- /}/" "$TODO_FILE"
    elif [[ $todo == *"✓"* ]]; then
        sed -i "s/$todo/- ${todo//✓ /}/" "$TODO_FILE"
    else
        sed -i "s/$todo/- $todo/" "$TODO_FILE"
    fi
}

# Function to add todo item
add_todo() {
    new_todo=$(${rofi_cmd} -p "Add Todo")
    if [[ -n $new_todo ]]; then
        echo "- $new_todo" >> "$TODO_FILE"
    fi
}

# Function to remove todo item
remove_todo() {
    to_remove=$(grep -v "^#" "$TODO_FILE" | ${rofi_cmd} -p "Remove Todo")
    if [[ -n $to_remove ]]; then
        sed -i "/^$to_remove$/d" "$TODO_FILE"
    fi
}

# Create the todo file if it doesn't exist
touch "$TODO_FILE"

# Main loop
while true; do
    choice=$(echo -e "Show Todo\nAdd Todo\nRemove Todo" | ${rofi_cmd} -p "TODO List" -format i)
    case $choice in
        0) show_todo ;;
        1) add_todo ;;
        2) remove_todo ;;
        *) exit ;;
    esac
done
