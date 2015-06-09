//: Playground - noun: a place where people can play

import UIKit

let sayHello = "Hi 你好 こんにちは 안녕하세요 \u{1f496}"

println("\(sayHello)\n")

println("\n\nUTF-8编码：")
for code in sayHello.utf8{
    print("\(code) ")
}

println("\n\nUTF-16编码：")
for code in sayHello.utf16{
    print("\(code) ")
}

println("\n\nUTF-32编码：")
for code in sayHello.unicodeScalars{
    print("\(code.value) ")
}
