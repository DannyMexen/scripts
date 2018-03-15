#!/bin/bash -x
# udug.sh - UpDate UpGrade.
# This is a simple script that updates, upgrades and autoremoves.
# If you wish to prevent a line from executing, then comment it out.
# To comment a line, place a '#' at its beginning

# Author: Danny Mexen, <dannymexen@gmail.com>
# Date: 14th March 2018, Wednesday, 08:27 CAT
# Version: 1
# Format: udug
    # I encourage you to save this file simply as udug instead of udug.sh.
    # This way, you can can just call it like a command.
    # Please add it your PATH
    # For example, my personal scripts are in ~/.bin, therefore, in my ~/.bashrc
    # file, I included the following line
    # `export PATH=~/.bin:"$PATH"` (minus the back ticks)
    # You don't have to make your bin folder hidden, it's just a habit of mine.
    # NOTE: You will have to enter in your password or run this script as root

# Step 1. Check for updates
sudo apt update # (some people recommend using apt-get in scripts but I find apt's progress bar useful)

# Step 2. List all available updates
sudo apt list --upgradable -a

# Step 3. Install available upgrades automatically with no prompt
sudo apt upgrade -y

# Step 4. Remove old config files and such
sudo apt autoremove -y; sudo apt autoclean -y; sudo apt clean -y

# Step 5. Exit with status 0
exit 0
