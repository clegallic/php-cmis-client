currentdir = $(realpath .)

unit32:
	docker run -v $(currentdir):/app -it "php32" phpunit

document32:
	docker run  --net=host -v $(currentdir):/app -it "php32" php examples/CreateDocument.php

bash32:
	docker run -v $(currentdir):/app -it "php32" bash

build32:
	docker build -t "php32" .
