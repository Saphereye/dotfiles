#!/usr/bin/env bash
# Author: Saphereye (adarshdas950@gmail.com)
# Script to scrape all dotfiles and scripts into this repository

cp ~/.bashrc .

cp -r ~/.scripts .

mkdir -p ./.config/kitty
rm -rf ./.config/kitty/*
cp -r ~/.config/kitty/* ./.config/kitty

