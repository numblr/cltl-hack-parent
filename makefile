SHELL = /bin/bash

project_root ?= $(realpath .)
project_name ?= "cltl-hack"
project_version ?= $(shell cat version.txt)

project_repo ?= ${project_root}/cltl-requirements/leolani
project_mirror ?= ${project_root}/cltl-requirements/mirror

project_components = $(addprefix ${project_root}/, \
		cltl-combot \
		cltl-requirements \
		cltl-hack \
		cltl-chat-ui \
		cltl-chat-backend)

git_local ?= ..
git_remote ?= https://github.com/leolani


include util/make/makefile.parent.mk
include util/make/makefile.git.mk
