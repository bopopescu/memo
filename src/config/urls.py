#!/usr/bin/python
# coding: utf-8

__all__ = [
    'urls'
]

#prefix = 'controllers.'
prefix = ''


urls = (
    '/',                    prefix + 'intro',
    '/sign_up',             prefix + 'user.SignUp',
    '/lost_pass',           prefix + 'user.LostPassword',
    '/new_pass',            prefix + 'user.NewPassword',
    '/login',               prefix + 'user.Login',
    '/logout',              prefix + 'user.Logout',
)
