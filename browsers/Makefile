all: browsers.image

clean:
	
browsers.image: node.image browsers/Dockerfile $(shell find browsers/ansible -type f )
	@echo "Building Browsers"
	cd browsers; docker build -f Dockerfile --rm=true -t redjack/browsers:0.0.1-alpha1 .
	touch browsers.image
	
	
node.image: base.image node/Dockerfile $(shell find node/ansible -type f )
	cd node; docker build -f Dockerfile --rm=true -t redjack/node:0.0.1-alpha1 .
	touch node.image
	
base.image: base/Dockerfile
	docker build -f base/Dockerfile --rm=true -t redjack/base:0.0.1-alpha1 .
	touch base.image

push: browsers.image node.image base.image
	docker push redjack/base:0.0.1-alpha1
	docker push redjack/node:0.0.1-alpha1
	docker push redjack/browsers:0.0.1-alpha1
