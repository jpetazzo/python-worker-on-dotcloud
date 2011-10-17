#!/bin/bash
[ -d ~/virtualenv ] ||
    virtualenv --python=python2.7 ~/virtualenv
. ~/virtualenv/bin/activate
[ -f requirements.txt ] &&
    pip install --download-cache=~/.pip-cache -r requirements.txt
[ -f setup.py ] &&
    python setup.py install
cp -a . ~
rm -f ~/supervisor.conf
cat >~/profile <<EOF
. ~/virtualenv/bin/activate
export PYTHONPATH=~
EOF
