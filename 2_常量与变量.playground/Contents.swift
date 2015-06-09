//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//常量，一旦赋值就不能更改，一般使用全大写字母作为常量
let MAXNUM = 100
//MAXNUM = 300

//变量，随时可以更改它的值
var num = 10
num = 99

//可以连续给变量定义，加,号
var a = 1, b = 2, c = 3, d = 4, e = 5,f = 6
println(a)
println(b)
println(c)
println(d)
println(e)
println(f)

//也可以连续给常量定义，加,号, 300000 == 300_000
let PI = 3.14, SPEED_OF_LIGHT = 300_000
println(PI)
println(SPEED_OF_LIGHT)

//指明变量和常量类型
var strResult : String = "你好，变量类型是string"
let strSay : String = "你说"

//当然，都可以使用中文命名变量，但是最好还是国际化，哈
let 最大登录人数 : Int = 100
var 当前登录人数 : Int = 10

//占位符\()
println("当前圆周率的值是：\(PI)")


//注解的快捷键是： 选中要注解的地方，command + / ，反注解也是

//分号，代表语句的结束，swift不建议打，但是，你习惯了也可以继续使用 ; 号





