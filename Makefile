#""""""""""""""""""""""""""_My VIMRC File_"""""""""""""""""""""""""""
#" Author:        Davi Sena <davis.sena@gmail.com>                  "
#" Copyright:     GPLv3                                             "
#" Description:   Makefile to vim                                   "
#" Creation Date: 09/26/2014                                        "
#"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
VIMBKP=~/.vimbkp-$(shell date +"%Y-%m-%d")

ean:
	echo "Cleaning"
	rm -rf bundle/*

backup:
	echo "Making backup at: $(VIMBKP)"
	mkdir $(VIMBKP)
	mv ~/.vim $(VIMBKP)/
	mv ~/.vimrc $(VIMBKP)/
	-mv ~/.viminfo $(VIMBKP)/
	-mv ~/.vimtags $(VIMBKP)/

deploy: link install-pathogen

link: cd ~/ && ln -s ~/.vim/.vimrc .vimrc

install-pathogen: 
	mkdir -p ~/.vim/autoload 
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

