.PHONY: all

VERSION=0.1.0

all:
	rm -rf quick-charge-personal-bots_$(VERSION)
	mkdir quick-charge-personal-bots_$(VERSION)
	cp *.lua *.json LICENSE quick-charge-personal-bots_$(VERSION)/
	rm -f quick-charge-personal-bots_$(VERSION).zip
	zip quick-charge-personal-bots_$(VERSION).zip quick-charge-personal-bots_$(VERSION)/*
