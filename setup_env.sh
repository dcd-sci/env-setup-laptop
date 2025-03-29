#!/bin/bash

echo "Instalando os apps essenciais..."
sudo apt install -y neovim git curl wget unzip

echo "Configurando o git..."
git config --global user.name "Davi"
git config --global user.email "dcdsci.db@gmail.com"
git config --global init.defaultBranch main

echo "Gerando a chave ssh..."
ssh-keygen -t rsa -b 4096 -C "dcdsci.db@gmail.com" -f ~/.ssh/id_rsa -N ""
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

# Clonando o respositório do neovim
#git clone git@github.com:dcd-sci/neovim-configs.git ~/.config/nvim

# Indicando ao nvim para instalar todos os plugins
#nvim +PlugInstall +qall

echo "Configuração concluída."
echo "Chave para o github: "
cat ~/.ssh/id_rsa.pub
