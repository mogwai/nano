#!/bin/bash

# Install Python
if ! command -v python3.10 &> /dev/null; then sudo add-apt-repository ppa:deadsnakes/ppa && sudo apt-get update && sudo apt-get install python3.10; fi
if [ ! -d .venv ]
then
    python -m venv .venv --prompt $(basename $PWD)
fi

# Activate Environment
source .venv/bin/activate

# Install Packages
pip install --upgrade pip
pip install --upgrade wheel setuptools >> /dev/null
pip install -e .[dev]
