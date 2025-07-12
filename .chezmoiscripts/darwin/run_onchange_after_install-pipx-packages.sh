#!/bin/bash
eval "$(/opt/homebrew/bin/brew shellenv)"
pipx install isort black pyrefly
pipx ensurepath
