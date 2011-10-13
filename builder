#!/bin/sh
[ -d ~/virtualenv ] ||
    virtualenv --python=python2.7 ~/virtualenv
[ -d ~/bin ] ||
    ln -s ~/virtualenv/bin ~/bin
[ -f requirements.txt ] &&
    pip install --download-cache=~/.pip-cache -r requirements.txt
[ -f setup.py ] &&
    python setup.py install
cp run ~/run
rm -f ~/supervisor.conf
