#  কর

 কর (koro) is an extension of the Go compiler and toolchain to support Bengali keywords.



## Compiling

Compiling কর is similar to compiling the Go compiler from scratch. You will need either a binary copy of the Go compiler (version 1.4 or higher), or a previous version of কর. 

```sh
$ cd src/
$ ./all.bash

This will create two files in `bin/` - one named `go` and one named `gofmt`. It is recommended to rename or symlink these to `koro` and `korofmt` before adding them to your path to avoid confusion; however, these can be used to compile English Go code as well.

```

## Writing in কর



মজা কর!

## Translating কর to English Go


To translate কর code into English, simply run `korofmt`. The flags are identical to `gofmt`. For example:








![Gopher image](doc/gopher/biplane.jpg)
