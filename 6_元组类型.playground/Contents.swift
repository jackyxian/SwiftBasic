//: Playground - noun: a place where people can play

import UIKit

//临时把几种类型凑合在一起如：网页的返回

var http404Error = (404,"没找到相关页面")

//如果获取元组里面的值呢，通过下标，0是第1个元素
var code = http404Error.0
var message = http404Error.1
println("错误代码是：\(code)，错误的信息是：\(message)")

