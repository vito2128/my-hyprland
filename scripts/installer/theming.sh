#!/bin/bash

# Get the directory of the current script
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Source helper file
source $SCRIPT_DIR/helper.sh

log_message "Installation started for theming section"
print_info "\nStarting theming setup..."

run_command "pacman -S --noconfirm nwg-look" "Install nwg-look for GTK theme management" "yes" 

run_command "pacman -S --noconfirm qt5ct qt6ct" "Install Qt5, Qt6 Settings" "yes"

run_command "tar -xvf /home/$SUDO_USER/my-hyprland/assets/themes/Catppuccin-Mocha.tar.xz -C /usr/share/themes/" "Install Catppuccin Mocha GTK theme" "yes" 

run_command "tar -xvf /home/$SUDO_USER/my-hyprland/assets/icons/Tela-circle-dracula.tar.xz -C /usr/share/icons/" "Install Tela Circle Dracula icon theme" "yes"

run_command "pacman -S --noconfirm thunar" "Install thunar file manager" "yes" "no"

run_command "cp -r /home/$SUDO_USER/my-hyprland/configs/kitty /home/$SUDO_USER/.config/" "Copy Catppuccin theme configuration for Kitty terminal" "yes" "no"

# Add instructions to configure theming
print_info "\nPost-installation instructions:"
print_bold_blue "Set themes and icons:"
echo "   - Run 'nwg-look' and  set the global GTK and icon theme"
echo "   - Open 'qt6ct' and 'qt5ct' to set the icon theme"

echo "------------------------------------------------------------------------"