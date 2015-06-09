//: Playground - noun: a place where people can play

import UIKit

//间接拆包，当我确定变量或常量的值一定不为nil时，使用
let 幸运转盘 : String! = "5" //我确定有值，加!号，就不用再拆包了
println("我获取的幸运转盘：\(幸运转盘)")

if let 金额 = 幸运转盘{
    println("我获取的幸运转盘：\(金额)")
}
