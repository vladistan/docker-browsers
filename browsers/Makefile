all: browsers.image

clean:
	
browsers.image: node.image Dockerfile.browsers $(shell find ansible.browsers -type f )
	@echo "Building Browsers"
	docker build -f Dockerfile.browsers --rm=true -t redjack/browsers:0.0.1-alpha1 .
	touch browsers.image
	
node.image: base.image Dockerfile.node $(shell find ansible.node -type f )
	docker build -f Dockerfile.node --rm=true -t redjack/node:0.0.1-alpha1 .
	touch node.image
	
base.image: Dockerfile.base
	docker build -f Dockerfile.base --rm=true -t redjack/base:0.0.1-alpha1 .
	touch base.image

push: browsers.image node.image base.image
	docker push redjack/base:0.0.1-alpha1
	docker push redjack/node:0.0.1-alpha1
	docker push redjack/browsers:0.0.1-alpha1
