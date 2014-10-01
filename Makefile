#""""""""""""""""""""""""_My VIM Makefile_"""""""""""""""""""""""""""
#" Author:        Davi Sena <davis.sena@gmail.com>                  "
#" Copyright:     GPLv3                                             "
#" Description:   Makefile to vim                                   "
#" Creation Date: 09/26/2014                                        "
#"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
VIMBKP=~/.vimbkp-$(shell date +"%Y-%m-%d")

clean:
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

link: 
	cd ~/ && ln -s ~/.vim/.vimrc .vimrc

install-pathogen: 
	mkdir -p ~/.vim/autoload 
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
	
install-bundle:
	mkdir -p ~/.vim/bundle	
	git clone https://github.com/bling/vim-airline.git ~/.vim/bundle/vim-airline
	git clone https://github.com/scrooloose/syntastic ~/.vim/bundle/syntastic
	git clone https://github.com/ervandew/supertab ~/.vim/bundle/supertab
	git clone https://github.com/shawncplus/phpcomplete.vim ~/.vim/bundle/phpcomplete.vim
	git clone https://github.com/Raimondi/delimitMate ~/.vim/bundle/delimitMate
	git clone https://github.com/kien/ctrlp.vim ~/.vim/bundle/ctrlp.vim
	git clone https://github.com/vim-scripts/bufkill.vim ~/.vim/bundle/bufkill.vim
	git clone https://github.com/sickill/vim-monokai ~/.vim/bundle/vim-monokai
	git clone https://github.com/sjl/badwolf ~/.vim/bundle/badwolf

