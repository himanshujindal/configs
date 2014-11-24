#!/bin/bash
ln -s ~/configs/.vimrc ~/
ln -s ~/configs/.bashrc ~/
git config --global user.name "Himanshu Jindal"
git config --global user.email "himanshujindal@gmail.com"
git branch --set-upstream-to=origin/master master
