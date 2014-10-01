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

deploy: link install-pathogen install-bundle

link: cd ~/ && ln -s ~/.vim/.vimrc .vimrc

install-pathogen: 
	mkdir -p ~/.vim/autoload 
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
	
install-bundle:
        mkdir -p ~/.vim/bundle
        cd ~/.vim/bundle
        git clone https://github.com/bling/vim-airline ~/.vim/bundle/vim-airline
        git clone https://github.com/scrooloose/syntastic.git
        git clone https://github.com/ervandew/supertab
        git clone https://github.com/shawncplus/phpcomplete.vim
        git clone https://github.com/Raimondi/delimitMate
        git clone https://github.com/kien/ctrlp.vim
        git clone https://github.com/vim-scripts/bufkill.vim
        git clone https://github.com/tomasr/molokai
        git clone https://github.com/sjl/badwolf

