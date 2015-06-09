//: Playground - noun: a place where people can play

import UIKit

//有个变量，可选变量，?? 相当于 可选变量为nil的时候，我赋值为 xx,有值就直接拆包为yy,
// 可选变量 yy  (yy ?? xx)

let 底线品牌 = "小米4"
var 理想品牌 : String?

var 实际入手 = (理想品牌 ?? 底线品牌)

