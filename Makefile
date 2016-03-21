.PHONY: test install

test:
	TZ=GMT ./node_modules/.bin/mocha --bail --slow 2 --reporter spec

install:
	npm install

test-install:
	npm install --dev

circle-install:
	curl --remote-name https://raw.githubusercontent.com/Shyp/set-node-npm/master/set-node-npm
	chmod +x set-node-npm
	./set-node-npm

shrinkwrap:
	rm -rf node_modules
	npm cache clear
	npm install --production
	npm shrinkwrap
	npm install --production
	npm shrinkwrap
	clingwrap npmbegone
