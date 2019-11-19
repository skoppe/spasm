# Building

A simple `dub build --build=release` should just work.

The only supported compiler is ldc >= 1.15.0.

# Dub 

Dub doesn't know how to handle wasm files so it will put the wrong file extension on them. See https://github.com/dlang/dub/issues/1749

# Windows

On windows you will need to add the `--combined` flag to dub.

# ldc 1.18.0

The new separate compilation feature that dub got for ldc causes an unrecognized flag (`--no-as-needed`) to be propagated. The short term fix is adding the `--build-mode=allAtOnce` to the dub invocation.

# ldc 1.17.0

Works as intended.

# ldc 1.16.0

ldc 1.16.0 requires the "allowWarnings" buildRequirements in your project's dub.json/sdl file.

ldc 1.16.0 produces some bloat due to the visibility not being set on compiler generated code. There is an issue open [ldc #3122](https://github.com/ldc-developers/ldc/issues/3122).

You can get the same behavior as in ldc 1.15.0 by removing the `--export-dynamic` in the `ldc2.conf` file in your ldc installation. Alternatively you can put a custom `ldc2.conf` in your projects root folder (from where you execute `dub`).
