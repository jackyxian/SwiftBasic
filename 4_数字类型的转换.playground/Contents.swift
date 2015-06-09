//: Playground - noun: a place where people can play

import UIKit

//不能使用高于 类型范围 的变量或常量 赋值
//let a : UInt8 = 256

//不同类型之间的数字，要转换为同一类型才可以进行相关计算

var a : Int8 = 100
var b : Int16 = 10

let c = a + Int8(b)

//类型转换，要精确的话，向下转型，向上转型，会降低精确度
var d : Int = 3
var e : Double = 0.1415926

let f = Double(d) + e

//字面量可以不用类型转换，直接操作
let g = 3 + 0.1415927

//类型别名
typealias 整形 = UInt8
var z : 整形 = 0
z = 整形.max
