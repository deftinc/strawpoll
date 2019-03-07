define USAGE

###########
## Tasks ##
###########

build - Build images for service from buildpack(s)
console - Open a REPL prompt
bootstrap - Install all development environment dependencies
setup - Install project dependencies and initial state
server - Start the server
test - Run the test suite
update - Update project dependencies and update state
usage - this prompt

endef

export USAGE

.DEFAULT_GOAL := usage

.SHELL: /bin/bash

.PHONY: $(MAKECMDGOALS) # Everything below should always run

bootstrap:
	./scripts/install_brews.sh && \
		./scripts/install_ruby.sh

build:
	pack help

console:
	./scripts/start_repl.sh

setup:
	./scripts/install_gems.sh && \
	./scripts/create_database.sh && \
	./scripts/migrate_database.sh

server:
	./scripts/start_server.sh

test:
	./scripts/run_tests.sh

update:
	./scripts/install_gems.sh && \
	./scripts/migrate_database.sh

usage:
	@echo "$$USAGE"