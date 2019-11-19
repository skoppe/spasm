build: build-spasm build-webidl build-examples

test: test-spasm test-webidl

test-spasm:
	dub test --registry=https://dub.bytecraft.nl

test-webidl:
	cd webidl && dub test --compiler=ldc2 --registry=https://dub.bytecraft.nl

build-spasm:
	dub build --compiler=ldc2 --build=release --build-mode=allAtOnce --registry=https://dub.bytecraft.nl

build-webidl:
	cd webidl && dub build --compiler=ldc2 --build=release --build-mode=allAtOnce --registry=https://dub.bytecraft.nl

build-examples:
	find examples -maxdepth 1 -mindepth 1 -type d -print0 | xargs -0 -i bash -c 'cd {} && echo "Building {}..." && dub build --compiler=ldc2 --build=release --build-mode=allAtOnce --registry=https://dub.bytecraft.nl'
