#!/usr/bin/env python
# -*- coding: utf-8 -*- #
from __future__ import unicode_literals

AUTHOR = u'PSSI'
SITENAME = u'In PyCon Blog'
SITEURL = '/blog'

PATH = 'content'
TIMEZONE = 'Asia/Kolkata'

DEFAULT_LANG = u'en'

# Feed generation is usually not desired when developing
FEED_DOMAIN = None
FEED_ALL_RSS = None
FEED_ALL_ATOM = None
CATEGORY_FEED_ATOM = None
TRANSLATION_FEED_ATOM = None
AUTHOR_FEED_ATOM = None
AUTHOR_FEED_RSS = None

ARTICLE_PATHS = ['blog']
THEME = 'themes/inpycon2019'

# Blogroll
LINKS = (('InPyCon', 'http://in.pycon.org/'),
         ('PSSI', 'http://pssi.org.in/'),)

ARTICLE_SAVE_AS = '{date:%Y}/{slug}.html'
ARTICLE_URL = '{date:%Y}/{slug}.html'

CATEGORY_SAVE_AS = False

YEAR_ARCHIVE_SAVE_AS = '{date:%Y}/index.html'

PLUGIN_PATHS = ["./plugins/"]
PLUGINS = ["summary"]

# This settings indicates that you want to create summary at a certain length
SUMMARY_MAX_LENGTH = None

# Social widget
# SOCIAL = (('You can add links in your config file', '#'),
#           ('Another social link', '#'),)

# DEFAULT_PAGINATION = 5
# PAGINATION_PATTERNS = (
#     (1, '{base_name}/', '{base_name}/index.html'),
#     (2, '{base_name}/page/{number}/', '{base_name}/page/{number}/index.html'),
# )

# Uncomment following line if you want document-relative URLs when developing
# RELATIVE_URLS = True

STATIC_PATHS = ['images', '_redirects']
USE_SHORTCUT_ICONS=True
EXTRA_PATH_METADATA = {
    'images/favicon.png': {'path': 'favicon.png'}
}
