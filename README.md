# VENV_CREATOR

## Description
Simple script to create a virtual environment for your python project.
A virtual environment in Python serves to create an isolated environment for a specific project. Here are some of the main advantages and uses of a virtual environment:

<b>Dependency Isolation:</b>
Prevents conflicts between different versions of packages used in various projects.
Allows the installation of specific versions of packages required for a project without interfering with other projects or the global Python system.

<b>Reproducibility:</b>
Facilitates project reproducibility, ensuring that all dependencies are exactly as specified, preventing unwanted updates from breaking the code.
Allows the creation of files like requirements.txt that list all dependencies, making it easier to share and set up the development environment.

<b>Ease of Management:</b>
Simplifies the management of project-specific dependencies and configurations.
Enables working on multiple projects with different configurations without needing to reinstall packages each time.

## Installation
1. Place `venv_creator.sh` in the root folder of your Python project.
2. Make sure to have also placed a `requirements.txt` file with all the dependencies to install in the same folder.
3. Run the command `bash venv_creator.sh` in your terminal, while you are in the root folder.
