#!/bin/bash

# Define the theme directory
theme_dir="/path/to/your/theme/directory"

# Create an array of theme names from the theme directory
themes=($(ls "$theme_dir"))

# Create a Yad dialog with a list of themes
selected_theme=$(yad --list --column="Themes" "${themes[@]}")

# Check if a theme was selected
if [ -n "$selected_theme" ]; then
    # Apply the selected theme using hyprtheme
    hyprtheme apply "$selected_theme"
fi
