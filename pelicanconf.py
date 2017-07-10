#!/usr/bin/env python
# -*- coding: utf-8 -*- #
from __future__ import unicode_literals

AUTHOR = u'PSSI'
SITENAME = u'In PyCon Blog'
SITEURL = ''

PATH = 'content'
TIMEZONE = 'Asia/Kolkata'

DEFAULT_LANG = u'en'

# Feed generation is usually not desired when developing
FEED_DOMAIN = None
FEED_ALL_RSS = None
FEED_ALL_ATOM = None
CATEGORY_FEED_ATOM = None
TRANSLATION_FEED_ATOM = None
ARTICLE_PATHS = ['blog']
AUTHOR_FEED_ATOM = None
AUTHOR_FEED_RSS = None
THEME = 'themes/inpycon2017'
SITEURL = '/blog'

# Blogroll
LINKS = (('InPyCon', 'http://in.pycon.org/'),
         ('PSSI', 'http://pssi.org.in/'),)

ARTICLE_SAVE_AS = '{date:%Y}/{slug}.html'
ARTICLE_URL = '{date:%Y}/{slug}.html'

YEAR_ARCHIVE_SAVE_AS = '{date:%Y}/index.html'

# Social widget
# SOCIAL = (('You can add links in your config file', '#'),
#           ('Another social link', '#'),)

DEFAULT_PAGINATION = False

# Uncomment following line if you want document-relative URLs when developing
# RELATIVE_URLS = True
