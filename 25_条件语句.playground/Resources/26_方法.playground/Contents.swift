//: Playground - noun: a place where people can play

import UIKit

//1.定义方法和调用
func sayHello(personName:String)->String{
    let say = "你好，\(personName)！"
    return say
}
println(sayHello("雨燕"))
println("\n")

//2.多个参数
func getMoney(工资:Int,扣税:Int)->Int{
    return 工资 - 扣税
}
println("波波每月实际收入：\(getMoney(30000,5000))")
println("\n")

//3.没有参数
func sayHi()->String{
    return "Hi,波波"
}
println(sayHi())
println("\n")

//4.没有返回值
func HiMan(name:String){
    println("你好啊，\(name)")
}
HiMan("老镇")
println("\n")

//5.函数的相互调用
func printAndCount(stringToPrint:String)->Int{
    println(stringToPrint)
    return count(stringToPrint)
}
func printWithoutCount(stringToPrint:String){
    printAndCount(stringToPrint)
}
printAndCount("花川学院")       //有返回值,并且打印了参数
printWithoutCount("花川学院")   //没有返回值，只打印了参数
println("\n")

//6.返回多个值，我们使用元组
func getMinMax(array:[Int])->(min:Int,max:Int){
    var min = array[0]
    var max = array[0]
    //迭代数组，获取最小和最大值
    for value in array{
        if value < min{
            min = value
        }
        if value > max{
            max = value
        }
    }
    
    return (min,max)
}
let values = getMinMax([10,42,8,99,3])
println("最小值是：\(values.min)，最大值是：\(values.max)")
println("\n")

//7.返回多个值，我们使用元组，并且添加可选类型，数组可能为nil
func getMinMaxMoney(array:[Int])->(min:Int,max:Int)?{
    if array.isEmpty {
        return nil
    }
    var min = array[0]
    var max = array[0]
    //迭代数组，获取最小和最大值
    for value in array{
        if value < min{
            min = value
        }
        if value > max{
            max = value
        }
    }
    
    return (min,max)
}
var arrays = [Int]()
arrays = [1,2,3]
//可选类型判断拆包
if let moneys = getMinMaxMoney(arrays){
    println("最小值是：\(moneys.min)，最大值是：\(moneys.max)")
}else{
    println("没有值")
}
println("\n")

//8.定义参数别名(更好说明参数的含义)
func join(string s1:String, toString s2:String, WithJoiner joiner:String)->String{
    return s1+joiner+s2
}
println(join(string: "华仔", toString: "雨燕", WithJoiner: "讲"))
println("\n")

//9.如果你想定义的参数名称就是参数的别名，可以使用#号
func 是否女优(#名字:String, #年龄:Int)->Bool{
    var 答案:Bool = false
    if(年龄 < 30){
        答案 = true
    }
    if(名字 == "波多野结衣" || 名字 == "明日花绮罗" || 名字 == "桃谷绘理香"){
        答案 = true
    }
    
    return 答案
}
println(是否女优(名字: "桃谷绘理香", 年龄: 22));
println(是否女优(名字: "苍井空", 年龄: 31));//从良了-_-!!!
println("\n")

//10.参数别名和默认值
func 女优(#名字:String, #年龄:Int, #胸围:String = "34C"){
    println("\(名字)年龄： \(年龄)，胸围：\(胸围)")
}
女优(名字: "明日花绮罗", 年龄: 25, 胸围: "36E")
女优(名字: "波多野结衣", 年龄: 29)

//11.N个可变参数
func 选秀(numbers:Int...)->String{
    var total : Int = 0
    var min = numbers[0];
    var max = numbers[0];
    for number in numbers{
        total += number
        if(number > max){
            max = number
        }
        if(number < min){
            min = number
        }
    }
    
    return "一共有\(total)位佳丽，其中第一位\(min)号，最后一位是：\(max)号"
    
}

println(选秀(1,3,21,4,5,88))
println(选秀(31,23,14,99,6,28))

//12.可变参数，使函数可以当参数作为各种返回值
//string这里当作可以变化的返回值和参数使用
func alignRight(var string: String, totalLength: Int, pad: Character) -> String {
    let amountToPad = totalLength - count(string)
    if amountToPad < 1 {
        return string
    }
    let padString = String(pad)
    for _ in 1...amountToPad {
        string = padString + string
    }
    return string
}
let originalString = "hello"
let paddedString = alignRight(originalString, 10, "-")

//13.输出参数，函数计算后，把值返回给参数变量
//这函数是a和b的值换了
func swapTwoInts(inout a: Int, inout b: Int) {
    let temp = a
    a = b
    b = temp
}
var a1 = 100
var b1 = 50
//调用输出参数的值时要多加&符号到参数
swapTwoInts(&a1, &b1)
println("a1：\(a1),   b1：\(b1)")

//14.函数类型
func 两数相加(a:Int,b:Int) -> Int{
    return a + b
}
func 两数相乘(a:Int,b:Int) -> Int{
    return a * b
}
//可以这样定义函数定义变量
var tmp1 = 两数相加
var tmp2 : (Int,Int)->Int = 两数相乘
//函数变量的使用
println("2加5是\(tmp1(2,5))")
println("2乘5是\(tmp2(2,5))")

//15.函数类型作为参数
func 显示相乘结果(a:Int,b:Int,相乘函数:(Int,Int)->Int){
    let result = 相乘函数(a,b)
    println("\(a)乘以\(b)等于\(result)")
}
//这样调用具有函数类型作为参数的函数
显示相乘结果(5, 6, 两数相乘)

//16.函数类型作为返回值
func 加一(number:Int)->Int{
    return number + 1
}
func 减一(number:Int)->Int{
    return number - 1
}
//函数作为返回类型
func 判断加减(判断正负:Bool)->(Int)->Int{
    return 判断正负 ? 减一 : 加一
}
var num = 100
//函数作为常量
let 函数 = 判断加减(num > 0)

while num != 0{
    println(num)
    //调用常量函数
    num=函数(num)
}

//17.嵌套函数
func 得出结果(加薪减薪:Bool)->(Int,Int)->Int{
    func 加薪(工资:Int,加薪:Int)->Int{
        return 工资+加薪
    }
    func 减薪(工资:Int,减薪:Int)->Int{
        return 工资-减薪
    }
    
    return 加薪减薪 ? 加薪 : 减薪
}
//定义常量函数
let fun = 得出结果(true)
//调用嵌套的函数类型
var result = fun(9500,2000)
println("今年的工资是：\(result)")





















