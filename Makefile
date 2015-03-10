.PHONY: all node browsers

all: browsers

node: node/Dockerfile
	# Pull the base image to ensure it's up to date
	cd node && docker build --pull -t redjack/node .

browsers: node browsers/Dockerfile
	# Note that we do NOT pull the base image here, because
	# 'redjack/browsers' is built from 'redjack/node', which we'll already
	# have built locally.
	cd browsers && docker build -t redjack/browsers .
