//: Playground - noun: a place where people can play

import UIKit

//1.for in 循环，比其他语言的foreach in 更好用
//迭代出乘法口诀
for index in 1...5{
    println("\(index) 乘以5是：\(index * 5)")
}

//2.当不需要指数的时候，如上例的 index，我们使用 _代表不需要,这里，我们计算3的10次方是
let base = 3
let power = 10
var answer = 1

for _ in 1...power{
    answer *= base
}

println("\(base) 的 \(power) 次方是： \(answer)")

//3.迭代数组
let 美女组 = ["林志玲","明日花绮罗","唐嫣","陈静","朴智妍"]
for 美女 in 美女组{
    println("美女有：\(美女)")
}

//4.迭代字典
let 美女字典 = ["台湾":"林志玲","日本":"明日花绮罗","中国":"唐嫣","香港":"陈静","韩国":"朴智妍"]
for(place,gril) in 美女字典{
    println("\(place)有美女：\(gril)")
}

//5.迭代字符
for char in "你好，Swift!"{
    println(char)
}

//6.一般的for循环d
var index: Int
for(index = 0;index<3;++index){
    println("index is \(index)")
}
println(index);

//----------------------while---------------------
var start = 0
var finish = 10
while start < finish {
    start++
    println("你好啊")
}

//----------------------doWhile---------------------
var begin = 0
var end = 10
do{
    begin++
    println("就干他")
}while begin < end





