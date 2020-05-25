PELICAN?=pelican
PELICANOPTS=

BASEDIR=$(CURDIR)
INPUTDIR=$(BASEDIR)/content
OUTPUTDIR=$(BASEDIR)/output
CONFFILE=$(BASEDIR)/pelicanconf.py

PORT ?= 8000
BIND ?= 127.0.0.1

DEBUG ?= False
ifeq ($(DEBUG), True)
	PELICANOPTS += -D
endif

GENERATOR=$(PELICAN) $(INPUTDIR) --output $(OUTPUTDIR) --settings $(CONFFILE) $(PELICANOPTS)

SITEURL?="https://in.pycon.org/blog"
FEED_ALL_ATOM?="feeds/all.atom.xml"
CATEGORY_FEED_ATOM?="feeds/%s.atom.xml"
PUBLISHENV=SITEURL=$(SITEURL) FEED_ALL_ATOM=$(FEED_ALL_ATOM) CATEGORY_FEED_ATOM=$(CATEGORY_FEED_ATOM)

help:
	@echo 'Makefile for a pelican Web site                                        		'
	@echo '                                                                      		'
	@echo 'Usage:                                                                 		'
	@echo '   make html [PUBLISH=False]         (re)generate the web site          		'
	@echo '   make clean                       remove the generated files         		'
	@echo '   make serve [PORT=8000]           serve site at http://localhost:8000		'
	@echo '                                                                       		'
	@echo 'Set DEBUG to True to enable debugging, e.g. make html DEBUG=True				'
	@echo 'Set PUBLISH to True in `make html` to publish, e.g. make html PUBLISH=True   '
	@echo '                                                                       		'

html: $(INPUTDIR) $(CONFFILE) $(OUTPUTDIR)

$(OUTPUTDIR):
ifeq ($(PUBLISH), True)
	$(PUBLISHENV) $(GENERATOR)
else
	$(GENERATOR)
endif

clean:
	[ ! -d $(OUTPUTDIR) ] || rm -rf $(OUTPUTDIR)

serve:
	$(PELICAN) --listen --autoreload $(INPUTDIR) --settings $(CONFFILE) --port $(PORT) --bind $(BIND) $(PELICANOPTS)

.PHONY: html help clean serve
