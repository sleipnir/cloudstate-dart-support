image=sleipnir/cloudstate-dart-shoppingcart:0.5.4

.PHONY: all clean

all: image install

run:

	dart bin/main.dart

build:

	docker build -t ${image} . 

install:

	docker push ${image}

	
