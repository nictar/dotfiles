#!/usr/bin/env bash

echo && echo "cleanup.sh"

echo "Installing pytest..."
pip install -U pytest

echo "Installing pylint..."
pip install -U pylint

echo "Installing yapf..."
pip install -U yapf

# Setup VSCode
bash setup-scripts/vscode-setup.sh

# Install fonts
bash setup-scripts/font-setup.sh

# Setup new git and git-lfs
bash setup-scripts/git-setup.sh
git lfs install

# Setup new bash environment
bash setup-scripts/bash-setup.sh

echo "end cleanup.sh"