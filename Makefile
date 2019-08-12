build: build-spasm build-webidl build-examples

test: test-spasm test-webidl

test-spasm:
	dub test

test-webidl:
	cd webidl && dub test --compiler=ldc2

build-spasm:
	dub build --compiler=ldc2 --build=release

build-webidl:
	cd webidl && dub build --compiler=ldc2 --build=release

build-examples:
	find examples -maxdepth 1 -mindepth 1 -type d -print0 | xargs -0 -i bash -c 'cd {} && echo "Building {}..." && dub build --compiler=ldc2 --build=release'
