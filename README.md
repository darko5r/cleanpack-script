#!/bin/bash 

# Overview

# This bash script allows you to clean up orphaned and unused packages in Arch Linux. Orphaned packages are packages that are installed but not required by any other installed package. Unused packages are packages that are installed but not being used by any installed package. Removing orphaned and unused packages can help free up disk space and improve system performance.
    
# Prerequisites

    # Arch Linux operating system
    # pacman package manager (installed by default on Arch Linux)
    
    # Usage

        # To use the script, download it and make it executable:

                  git clone https://github.com/darko5r/cleanpack-script.git
                  chmod +x cleanpack.sh

        # Then, run the script:

                ./cleanpack.sh

        # The script will display a menu with the following options:

                # 1. View and clean up orphaned packages
                # 2. View and clean up unused packages
                # 3. Quit
                
# Select one of the options by entering the corresponding number.

# Clean up orphaned packages

# Selecting this option will find and remove all orphaned packages on the system. The script will display a list of orphaned packages and prompt you to confirm their removal. You can also choose to display a table of the orphaned packages before confirming their removal.

# Clean up unused packages

# Selecting this option will find and remove all unused packages on the system. The script will display a list of unused packages and prompt you to select which ones you want to remove. You can also choose to display a table of the unused packages before selecting which ones to remove.

# Quit

# Selecting this option will exit the script.
