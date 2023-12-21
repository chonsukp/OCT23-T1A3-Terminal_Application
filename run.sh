#!/bin/bash

# Check to see if Python 3 is installed. 
if command -v python3 &> /dev/null
then
    # Create a virtual environment.
    if python3 -m venv .venv
    then 
        # Check to see if venv exists.
        echo "Activating the virtual environment..."
        source .venv/bin/activate

        # Install required packages.
        if echo "Installing required packages..."
        then pip3 install -r requirements.txt

            # Clear the terminal screen for clean console.
            clear

            # Runs the application.
            echo "Application is now running..."
            python3 main.py

            # Deactivate the virtual environment.
            deactivate
        else
            echo "Failed to install required packages."
        fi
    else
        echo "Failed to create the virtual environment."
    fi
else
    echo "Python 3 is not installed. Please install Python 3 before running this application."
fi


