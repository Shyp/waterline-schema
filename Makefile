.PHONY: test install

test:
	TZ=GMT mocha --bail --slow 2 --reporter spec

install:
	npm install

test-install:
	npm install --dev

shrinkwrap:
	rm -rf node_modules
	npm cache clear
	npm install --production
	npm shrinkwrap
	npm install --production
	npm shrinkwrap
	clingwrap npmbegone
