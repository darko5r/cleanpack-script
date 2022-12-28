#!/bin/bash

# Overview

# This bash script allows you to clean up orphaned and unused packages in Arch Linux. Orphaned packages are packages that are installed but not 
# required by any other installed package. Unused packages are packages that are installed but not being used by any installed package. 
# Removing orphaned and unused packages can help free up disk space and improve system performance.

# Prerequisites

    # Arch Linux operating system
    # pacman package manager (installed by default on Arch Linux)
    
    Usage

To use the script, download it and make it executable:

https://github.com/darko5r/cleanpack-script.git
chmod +x cleanpack.sh

Then, run the script:

./cleanpack.sh

The script will display a menu with the following options:

    Clean up orphaned packages
    Clean up unused packages
    Quit
