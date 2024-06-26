#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[0;37m'
NC='\033[0m'

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

echo -e "${CYAN}Loading...${NC}" 

python3 -m venv venv

if [ ! -d "venv" ]; then
    echo "Failed to create the virtual environment 'venv'. Exiting."
    exit 1
fi

source venv/bin/activate

if [[ "$VIRTUAL_ENV" != "" ]]; then
    echo "Virtual environment 'venv' is active."
    
    if [ -f "requirements.txt" ]; then
        echo "Installing requirements from requirements.txt..."
        pip install -r requirements.txt
    else
        echo "Requirements.txt does not exist. No requirements will be installed."
        echo "Create requirements.txt and re-run this script."
    fi
else
    echo "Failed to activate the virtual environment. Exiting."
    exit 1
fi

echo -e "Virtual environment 'venv' is now active. if it is not already active, ${CYAN}run the command: source venv/bin/activate ${NC}"
echo -e " ${CYAN}To deactivate, run the command: deactivate ${NC}"

exec "$SHELL"
