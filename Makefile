install:
	npm install
build:
	docker build -t onurbalmeida/ubuntu-nodejs-hello-world .

run:
	node server.js

run-container:
	docker run -p 49254:3000 -d onurbalmeida/ubuntu-nodejs-hello-world 

test:
	curl localhost

clean:
	rm -rf node_modules
