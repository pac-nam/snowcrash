#!/usr/bin/env bash

if [ ! -d "${HOME}/.brew" ];then
	git clone https://github.com/Homebrew/brew.git ${HOME}/.brew
	export PATH="${HOME}/.brew/bin:${PATH}"
	brew update
fi

if [ ! -d $(brew --prefix openssl) ]; then
	brew install openssl
fi

cd ${HOME}
git clone https://github.com/magnumripper/JohnTheRipper.git

cd JohnTheRipper/src
./configure CPPFLAGS="-I$(brew --prefix openssl)/include"  LDFLAGS="-L$(brew --prefix openssl)/lib"
make -s clean && make -sj4
