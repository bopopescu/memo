#!/usr/bin/python
# coding: utf-8
import web

__all__ = [
    "db"
]

db = web.database(dbn='mysql', db='memo', user='root', pw='123456', driver='mysql-connector')

render = render_jinja(
        'templates',
        encoding = 'utf-8',
    )
