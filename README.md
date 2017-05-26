bash-dotfiles
=============

My dotfiles for some programs

Installation
============

    git clone
    cd bash-dotfiles
    ./symlink_files.sh


pyenv
=====

git clone https://github.com/pyenv/pyenv .pyenv
pyenv install 2.7.13
pyenv install 3.6.1
pyenv install miniconda2-latest
pyenv install miniconda3-latest

pyenv virtualenv 3.6.1 selenium
pyenv activate selenium


echo 2.7.13 > ~/.python-version


pip install ipython bpython ipdb docker-compose


selenium
========

wget https://github.com/mozilla/geckodriver/releases/download/v0.16.1/geckodriver-v0.16.1-linux64.tar.gz -O - | tar xvfz
move geckodriver ~/bin


APT packages
============

Take a look at `apt-pkg.txt`.

