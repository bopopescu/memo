#!/usr/bin/python
# coding: utf-8
import os
import sys

rootdir = os.path.abspath('..')
sys.path.append(rootdir)

if sys.platform == 'win32':
    activate_this = rootdir + '/win_env/scripts/activate_this.py'
else:
    activate_this = rootdir + '/env/bin/activate_this.py'

execfile(activate_this, dict(__file__ = activate_this))

from config import *
import web

if __name__ == "__main__":
    app = web.application(urls, globals())
    app.run()
