#!/usr/bin/python
# coding: utf-8
from config import *
import web

if __name__ == "__main__":
    app = web.application(urls, globals())
    app.run()
