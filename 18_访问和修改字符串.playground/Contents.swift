//: Playground - noun: a place where people can play

import UIKit

//1.字符串的索引
let str = "Hello, playground"
println(str.startIndex)
println(str.endIndex)
//2.通过索引获取字符（字符串就是字符的数组，所以下标获取字符）
str[str.startIndex]
str[str.startIndex.successor()]
str[str.endIndex.predecessor()]
let index = advance(str.startIndex, 7)
str[index]
//3.遍历字符串索引的值
for index in indices(str){
    println("\(str[index])")
}

var strHello = "你好，我们学习Swift"
//4.插入字符
strHello.insert("！", atIndex: strHello.endIndex)
//5.插入字符串
strHello.splice("你学会了吗？", atIndex: strHello.startIndex)
//6.删除字符_成功就返回删除了的某个字符
strHello.removeAtIndex(advance(strHello.startIndex, 7))
println(strHello)
//7.删除字符串_成功就返回删除了的某个字符串
let range = advance(strHello.endIndex, -6)..<strHello.endIndex
strHello.removeRange(range)
println(strHello)









