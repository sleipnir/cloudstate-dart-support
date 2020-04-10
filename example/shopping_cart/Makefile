image=sleipnir/cloudstate-dart-shoppingcart:0.5.0

.PHONY: all clean

all: image install

run:

	dart bin/shopping_cart.dart

build:

	cargo build && cargo build --release

image: 

	docker build -t ${image} . 

install:

	docker push ${image}

clean:

	cargo clean
	
