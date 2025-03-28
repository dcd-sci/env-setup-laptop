#!/bin/bash

echo "Iniciando configuração do NeoVim"
git clone git@github.com:dcd-sci/neovim-configs.git ~/.config/nvim
nvim +PlugInstall +qall

echo "Configuração concluída"
