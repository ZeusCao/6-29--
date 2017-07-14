//
//  ViewController.swift
//  17-6-29-数组
//
//  Created by Zeus on 2017/6/29.
//  Copyright © 2017年 Zeus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    // MARK --- 数组的定义
    func  demo1() {
        // oc中使用[]定义数组，swift一样，但没有“@”
        let array = ["张三", "小芳", "小明"]
        print(array)
        
        let p = CGPoint(x:10, y:5)
        let array1 = [p]
        print(array1)
        
        
        // 混合数组：开发中几乎不用，因为数组是靠下标索引
        // 如果数组中的类型不一致，自动推导的结果[NSObject]
        // 在swift中还有一种类型[AnyObject]-> 任意对象 （在swift中一个类可以没有任何父类）
        // ***
        let array2 = ["张三", 1, p] as [Any]
        print(array2)
    }

    // MARK ---数组的遍历
    func demo2() {
        let array = ["张三", "小芳", "小明"]
        // 1. 按下标遍历
        for i in 0..<array.count {
            print(i)
        }
        
        // 2. for in 遍历
        for s in array {
            print(s)
        }
        
        // 3. enum block遍历，同时遍历下标和内容(元祖数据类型)
        for e in array.enumerated() {
            print(e)
            print("\(e.offset)\(e.element)")
        }
        
        
        // 4.遍历下标和内容2
        for(n, s) in array.enumerated(){
          print("\(n) \(s)")
        }
        
        // 5.反序遍历
        for s in array.reversed() {
            print(s)
        }
        
        // 6.反序索引和内容
        for(n, s) in array.enumerated().reversed(){
            print("\(n) \(s)")
        }
    }
    
    
    // MARK ---数组的增删改
    func demo3() {
        // oc中数组分可变和不可变
        var array = ["张三", "小芳", "小明"]
        
        // 追加元素
        array.append("老王")
        
        // 修改（通过下标定位）
        array[0] = "小王"
        
        // 删除
        array.remove(at: 3)
        
        // 删除全部,并且保留空间
        array.removeAll(keepingCapacity: true)
        // capacity:容量
        print("\(array) \(array.capacity)")
    }
    
    //MARK --- 数组的合并
    func dmo5() {
        var array = ["张三", "小芳", "小明"]
        let array2 = ["老刀"]
        
        // 将array2合并到array
        // 要合并数组的两个类型必须一致
        array += array2
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

}











