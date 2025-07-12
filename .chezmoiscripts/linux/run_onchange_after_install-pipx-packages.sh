#!/bin/bash
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
pipx install isort black pyrefly
pipx ensurepath
