#  কর

 কর (koro) is an extension of the Go compiler and toolchain to support programming in Bengali (বাংলা).



## Building the কর toolchain

Compiling কর is similar to compiling the Go compiler from scratch. You will need either a binary copy of the Go compiler (version 1.4 or higher), or a previous version of কর. 

```sh
$ cd src/
$ ./all.bash
```

This will create two files in `bin/` - one named `go` and one named `gofmt`. It is recommended to rename or symlink these to `koro` and `korofmt` before adding them to your path to avoid confusion; however, these can be used to compile English Go code as well.
## Writing in কর

The syntax of কর is exactly the same as the syntax of English Go, except that Bengali keywords are valid syntax.

 `ভাঙ্গা`, `ক্ষেত্রে`, 	`চ্যানেল`, `ধ্রুবক`, `চলো`, 	`ডিফল্ট`, `মুলতবি`, `অন্যভাবে`, `নির্ঝর`, `যখনই`,`ফ`, `কর`,`লাফ`,`যদি`,`আমদানি`,`ইন্টারফেস`,`অভিধান`,`প্যাকেজ`,`প্রতিটি`,`ফিরুন`,`নির্বাচন`, `গঠন`, `সুইচ`,`ধরনের`, `পরিবর্তনশীল`, , 

For example, this is a "Hello, world" program:


```go
package main

import "fmt"

ফ main(){
    যদি true {
    fmt.Println("Hello, world!")
  }
}
```

Running your program works identically to the English Go compiler -`go build`, `go run`, etc. Assuming you have named your কর compiler as `koro`, you can run this program with:

```sh
$ koro run koro_hello_world.go
```


মজা কর!

## Translating কর to English Go


To translate কর code into English, simply run `korofmt`. The flags are identical to `gofmt`. For example:








![Gopher image](doc/gopher/biplane.jpg)
