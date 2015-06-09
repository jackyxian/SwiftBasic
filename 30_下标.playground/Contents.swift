//: Playground - noun: a place where people can play

import UIKit

//1.数组下标
var array = [1,2,3,4,5,6,7]
array[0] = 3
array

//2.通过下标调用函数
struct Square{
    
    //这里定义一个下标函数
    subscript(radius:Double)->Double{
        //M_PI：圆周率
        //pow：2个参数a和b，求2的b平方
        return  M_PI * pow(radius, 2)
    }
}

let 圆圈1 = Square()
//调用下标
圆圈1[10]

//3.多参数下标
// 1个2乘2的矩阵，编程数组[5,6,0,9]
//通过矩阵[行,列]的访问


//             第1列      第2列
// 第0行         5          6        元素序号：所在列 + [(所在行) * 总列数]
// 第1行         0          9        元素序号：所在列 + [(所在行) * 总列数]
struct Matrix{
    var rows, columns : Int
    var grid: [Int]
    
    init(rows:Int,columns:Int){
        self.rows = rows
        self.columns = columns
        
        grid = Array(count: rows * columns, repeatedValue: 0)
        
    }
    
    //检查索引是否超越数组大小
    func indexIsValid(row:Int,column:Int)->Bool{
        return (row >= 0 && row < rows && column >= 0 && column < columns)
    }
    //用下标方法 来储存矩阵对应的数组
    subscript(row:Int,column:Int)->Int{
        get{
            assert(indexIsValid(row, column: column), "数组索引越界")
            return grid[(row * columns) + column]
        }
        set{
            assert(indexIsValid(row, column: column), "数组索引越界")
            grid[(row * columns) + column] = newValue
        }
    }
    
    
}

var matrixdemo = Matrix(rows: 3, columns: 3)
matrixdemo[0,0] = 1
matrixdemo[0,1] = 2
matrixdemo[0,2] = 3
matrixdemo[1,0] = 4
matrixdemo[1,1] = 5
matrixdemo[1,2] = 6
matrixdemo[2,0] = 7
matrixdemo[2,1] = 8
matrixdemo[2,2] = 9

for i in matrixdemo.grid{
    print(i)
}



