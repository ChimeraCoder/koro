#  কর

কর (koro) is an extension of the Go compiler and toolchain to support programming in Bengali (বাংলা). 

You can read this README in English or in Bengali.

কর go কম্পাইলারের একটি এক্সটেনশন এবং বাংলা ভাষায় প্রোগ্রামিং করার  টুলচেইন। 

এই রিডমিটা ইংরেজি আর বাংলাতে  পড়তে পারো।


#  কর (বাংলা)

 কর(koro) go কম্পাইলারের একটি এক্সটেনশন এবং বাংলা ভাষায় প্রোগ্রামিং করার  টুলচেইন। 

go কম্পাইলারকে যেভাবে কম্পাইল করা হয়, তেমনি ভাবেই কর কেও কম্পাইল করা যাবে। তোমার দরকার go কম্পাইলারের একটি বাইনারী কপি অথবা কর এর কোনো আগের version।

```sh
$ cd src/
$ ./all.bash
```

উপরের `কমান্ড বিন (/bin/) ফোল্ডারে`দুইটা ফাইল তৈরি করবে - একটা হল `go`, আরেকটি `gofmt`। প্রোগ্রামিং করার সময় যেন কোন সন্দেহ বা অসুবিধা না হয়, সে জন্য উপরিল্লেখিত ফাইল দুটি রিনেম করে `koro` এবং `korofmt` করা যায়। যদিও একই ফাইল ব্যবহার করে ইংরেজি ভাষায় go কোড লিখা যাবে।

ইংরেজি `go` আর বাংলা `go` এর সিনটেক্সে কোন তারতম্য নাই। এক্ষেত্রে ইংরেজি এর সাথে বাংলা `go` প্রোগ্রামিং এর ক্ষেত্রে বাংলা কিওয়ার্ডগুলোও ভ্যালিড। বাংলার সব ভ্যালিড কিওয়ার্ডগুলো গুলো হল - 

 `ভাঙ্গা`, `ক্ষেত্রে`, 	`চ্যানেল`, `ধ্রুবক`, `চলো`, 	`ডিফল্ট`, `মুলতবি`, `অন্যভাবে`, `নির্ঝর`, `যখনই`,`ফ`, `কর`,`লাফ`,`যদি`,`আমদানি`,`ইন্টারফেস`,`অভিধান`,`প্যাকেজ`,`প্রতিটি`,`ফিরুন`,`নির্বাচন`, `গঠন`, `সুইচ`,`ধরনের`, `পরিবর্তনশীল`

উদাহরণ - এটা সবার জানা "হ্যালো ওয়ার্ন্ড" প্রোগ্রাম, 

```go
প্যাকেজ main

আমদানি "fmt"

ফ main(){
    যদি true {
    fmt.Println("Hello, world!")
  }
}
```

যেমন করে ইংরেজি go কম্পাইলার দিয়ে go প্রোগ্রাম কম্পাইল করা হয় - `go build`, `go run`, তেমনি ভাবেই, এই প্রোগ্রাম ও কম্পাইল করা
সম্ভব। যদি কম্পাইলারের নাম পরিবতন করে `koro` করে থাক, তবে, উপরের প্রোগ্রাম নিচের কমান্ড লিখেই রান করা যাবে - 

```
sh
$ koro run koro_hello_world.go
```

koro এর কোড ইংরেজিতে অনুবাদ করার জন্য, শুধু রান কর `korofmt`। বাংলা এর ক্ষেত্রে go কম্পাইলার ফ্ল্যাগের কোন পরিবতন হবে না, অর্থাৎ ইংরেজি ও বাংলার জন্য একই রকম থাকবে। যেমন - 

```
sh
$ korofmt koro_hello_world.go
```

এই কমান্ড কনসলে (বা  STDOUT) এ বাংলা অংশটুকু অটোমেটিক ভাবে ইংরেজি করে দিবে।

```
go
package main

import "fmt"

func main() {
	if true {
		fmt.Println("Hello, world!")
	}
}
```


#  কর (English)

 কর (koro) is an extension of the Go compiler and toolchain to support programming in Bengali (বাংলা).



## Building the কর toolchain

Compiling কর is similar to compiling the Go compiler from scratch. You will need either a binary copy of the Go compiler (version 1.4 or higher), or a previous version of কর. 

```sh
$ cd src/
$ ./all.bash
```

This will create two files in `bin/` - one named `go` and one named `gofmt`. It is recommended to rename or symlink these to `koro` and `korofmt` before adding them to your path to avoid confusion; however, these can be used to compile English Go code as well.
## Writing in কর

The syntax of কর is exactly the same as the syntax of English Go, except that Bengali keywords are valid syntax. The full list of Bengali কর keywords is:

 `ভাঙ্গা`, `ক্ষেত্রে`, 	`চ্যানেল`, `ধ্রুবক`, `চলো`, 	`ডিফল্ট`, `মুলতবি`, `অন্যভাবে`, `নির্ঝর`, `যখনই`,`ফ`, `কর`,`লাফ`,`যদি`,`আমদানি`,`ইন্টারফেস`,`অভিধান`,`প্যাকেজ`,`প্রতিটি`,`ফিরুন`,`নির্বাচন`, `গঠন`, `সুইচ`,`ধরনের`, `পরিবর্তনশীল`

For example, this is a "Hello, world" program:


```go
প্যাকেজ main

আমদানি "fmt"

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


## Translating কর to English Go


To translate কর code into English, simply run `korofmt`. The flags are identical to `gofmt`. For example:



```sh
$ korofmt koro_hello_world.go
```

will write the following to STDOUT:

```go
package main

import "fmt"

func main() {
	if true {
		fmt.Println("Hello, world!")
	}
}
```


## Contributions

Contributions welcome. And most importantly, মজা কর!

![Gopher image](doc/gopher/biplane.jpg)
