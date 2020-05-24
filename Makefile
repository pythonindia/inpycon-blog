PY?=python
PELICAN?=pelican
PELICANOPTS=

BASEDIR=$(CURDIR)
INPUTDIR=$(BASEDIR)/content
OUTPUTDIR=$(BASEDIR)/output
CONFFILE=$(BASEDIR)/pelicanconf.py
PUBLISHCONF=$(BASEDIR)/publishconf.py

PORT ?= 8000
BIND ?= 127.0.0.1

DEBUG ?= False
ifeq ($(DEBUG), True)
	PELICANOPTS += -D
endif

help:
	@echo 'Makefile for a pelican Web site                                        		'
	@echo '                                                                      		'
	@echo 'Usage:                                                                 		'
	@echo '   make html                        (re)generate the web site          		'
	@echo '   make clean                       remove the generated files         		'
	@echo '   make publish                     generate using production settings 		'
	@echo '   make serve [PORT=8000]           serve site at http://localhost:8000		'
	@echo '                                                                       		'
	@echo 'Set the DEBUG variable to True to enable debugging, e.g. make html DEBUG=True'
	@echo '                                                                       		'

html: $(INPUTDIR) $(CONFFILE) $(OUTPUTDIR)

$(OUTPUTDIR):
	$(PELICAN) $(INPUTDIR) --output $(OUTPUTDIR) --settings $(CONFFILE) $(PELICANOPTS)

clean:
	[ ! -d $(OUTPUTDIR) ] || rm -rf $(OUTPUTDIR)

serve:
	$(PELICAN) --listen --autoreload $(INPUTDIR) --settings $(CONFFILE) --port $(PORT) --bind $(BIND) $(PELICANOPTS)

publish:
	$(PELICAN) $(INPUTDIR) --output $(OUTPUTDIR) --settings $(PUBLISHCONF) $(PELICANOPTS)

.PHONY: html help clean serve publish
