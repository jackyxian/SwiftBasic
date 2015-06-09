//: Playground - noun: a place where people can play

import UIKit


//空字符串定义
var emptyString1 = ""
var emptyString2 = String()

if(emptyString1.isEmpty){
    println("空字符串")
}else{
    println("有值")
}

//字符串是字符的集合
for char in "牛奶仔🐮"{
    println(char)
}

//字符定义和赋值
var char : Character = "Z"

//Unicode编码
var 爱心 = "\u{1f496}"

//计算字符串的长度
var str = "你好，我爱swift！"
count(str)
