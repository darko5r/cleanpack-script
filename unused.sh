#!/bin/bash

while true; do
  # Display the menu
  echo "1. View and clean up orphaned packages"
  echo "2. View and clean up unused packages"
  echo "3. Quit"
  read -p "Enter your choice: " choice

  case $choice in
    1)  # Find and remove orphaned packages
        orphaned_packages=$(pacman -Qtdq)
        if [ -n "$orphaned_packages" ]; then
          read -p "Do you want to see the orphaned packages in a table? (y/n) " choice
          if [ "$choice" == "y" ]; then
            pacman -Qi $orphaned_packages
          fi
          read -p "Do you want to remove these orphaned packages? (y/n) " choice
          if [ "$choice" == "y" ]; then
            pacman -Rns $orphaned_packages
          fi
        else
          echo "No orphaned packages were found."
        fi
        ;;
    2)  # Find unused packages
        unused_packages=$(pacman -Qt)
        if [ -n "$unused_packages" ]; then
          read -p "Do you want to see the unused packages in a table? (y/n) " choice
          if [ "$choice" == "y" ]; then
            pacman -Qi $unused_packages
          fi
          # Prompt the user to select which unused packages to remove
          read -p "Do you want to remove these unused packages? (y/n) " choice
          if [ "$choice" == "y" ]; then
            select package in $unused_packages; do
              if [ -n "$package" ]; then
                pacman -Rns $package
              else
                break
              fi
            done
          fi
        else
          echo "No unused packages were found."
        fi
        ;;
    3)  # Quit the script
        break
        ;;
  esac
done
