#!/bin/bash

function presentation() {
    cat << "EOF"
 _   _                   _____                _             
| | | |                 /  __ \              | |            
| | | | ___ _ ____   __ | /  \/_ __ ___  __ _| |_ ___  _ __ 
| | | |/ _ \ '_ \ \ / / | |   | '__/ _ \/ _` | __/ _ \| '__|
\ \_/ /  __/ | | \ V /  | \__/\ | |  __/ (_| | || (_) | |   
 \___/ \___|_| |_|\_/    \____/_|  \___|\__,_|\__\___/|_|   
                                                            
                                                            
EOF
}

presentation

if ! command -v virtualenv &> /dev/null; then
    echo "virtualenv is not installed. Installing now..."
    pip install virtualenv
fi

virtualenv venv

source venv/bin/activate

if [ -f "requirements.txt" ]; then
    pip install -r requirements.txt
else
    echo "Requirements.txt does not exist. No requirements will be installed."
    echo "Create requirements.txt and re run this script."
fi
