//
//  main.swift
//  Bai3
//
//  Created by Ngoduc on 1/7/20.
//  Copyright © 2020 Ngoduc. All rights reserved.
//

import Foundation
//1, Sắp xếp mảng số nguyên theo chiều tăng dần và giảm dần
func sapxepMang(){
    var mang: [Int] = [1,5,3,7]
    mang.sort(by: <)
    print("Mảng sau khi sắp xếp tăng dần: \(mang)")
    mang.sort(by: >)
    print("Mảng sau khi sắp xếp giảm dần: \(mang)")
}
//2.tìm số
func timSo(){
    var n: Int
repeat {
    print("Nhập vào số tự nhiên bất kỳ")
    n = Int(readLine()!) ?? 0
} while (n < 10000)
var numbers = [Int]()
var x = 0
while n > 0 {
    x = n%10
    n = n/10
    numbers.insert(x, at: 0)
}
   var max1 = numbers[0]
   var max2 = numbers[0]
   
   for item in numbers[1...] {
       if max1 < item {
           max2 = max1
           max1 = item
       }else if max2 < item && item < max1{
           max2 = item
       }
       print(max1, max2)
   }
   print("Số lớn thứ 2 là \(max2)")
}
// Bài 3:
func timUoc() {
    print("Nhập số tự nhiên:")
    let number = Int(readLine()!)!
    if number < 0 {
        print("\(number) không phải số tự nhiên")
    } else if number == 0 {
        print("0 có vô số ước số!")
    } else {
        var numbers: [Int] = []
        for i in 1...(Int(number / 2)) {
            if number % i == 0 {
                numbers.append(i)
            }
        }
        numbers.append(number)
        print("\(number) có tập hợp ước số: \(numbers)")
    }
}
// 4, In ra họ và tên của một họ tên cho trước
func inHoTen(){
    print("Nhập vào họ và tên (không dấu)")
    let hoten = readLine() ?? ""
    
    let ho_tens = hoten.components(separatedBy: " ")
    
    if ho_tens.count == 1 {
        print(ho_tens[0])
    }else if ho_tens.count == 2 {
        print("\(ho_tens[0]) \(ho_tens[1])")
    }else{
        print("\(ho_tens.first!) \(ho_tens.last!)")
    }
}

// Bài 5:
func chonDapAn(){
    print("""
    Đâu không phải là một ngôn ngữ lập trình:
    a. Golang
    b. Swift
    c. Ruby
    d. Daily
""")
    let select = readLine()!
    switch select{
    case "a":
        print("Đáp án sai")
    case "b":
        print("Đáp án sai")
    case "c":
        print("Đáp án sai")
    case "d":
        print("Đáp án đúng")
    default:
        print("Đáp án không hợp lệ!")
        
    }
}


// Bài 6:
func soHoanHao() {
    
    print("Nhập số: ")
    let n = Int(readLine()!)!
    
    while n < 2 || n > 32767 {
        soHoanHao()
    }
    
    for i in 6...n {
        if isSoHoanHao(i) {
            print("\(i)")
        }
    }
}

// hàm kiểm tra một số phải số hoàn hảo hay không
func isSoHoanHao(_ n: Int) -> Bool {
    var sum = 0
    for i in 1...n/2 {
        // tính tổng các ước
        if n % i == 0 {
            sum += i
        }
    }
    
//    if sum == n {
//        return true
//    } else {
//        return false
//    }
    
    return sum == n
}
func hinhChuNhatDac(){
    print("Nhập kích thước m, n (m, n >= 2): ")
    let m = Int(readLine()!)!
    let n = Int(readLine()!)!
    
    for _ in 0..<m {
        for _ in 0..<n{
            print("*", terminator:"")
        }
        print()
    }
}

func hinhChuNhatRong(){
    print("Nhập kích thước m, n (m, n >= 2): ")
    let m = Int(readLine()!)!
    let n = Int(readLine()!)!
    for i in 0..<m{
        
        switch i {
        case 0:
            for _ in 0..<n{
                print("*", terminator: " ")
            }
            print()
        case 1..<m-1:
            for j in 0..<n{
                if j == 0 || j == n - 1{
                    print("*", terminator: " ")
                } else {
                    print(" ", terminator: " ")
                }
            }
            print()
        case m - 1:
            for _ in 0..<n{
                print("*", terminator: " ")
            }
            print()
        default:
            return
        }
    }
}

func tamGiacVuong(){
    print("Nhập chiều cao tam giác (>1): ")
    let h = Int(readLine()!)!
    
    for i in 1...h{
        for _ in 1...i{
            print("*", terminator:" ")
        }
        print()
    }
}

func tamGiacNguoc(){
    print("Nhập chiều cao tam giác (>1): ")
    let h = Int(readLine()!)!
    let day = 2*h - 1
    
    for i in 0..<h{
        for j in 0..<day{
            if i == j || (i <= day - 1 - j && i < j) {
                print("*",terminator:" ")
            } else {
                print(" ",terminator:" ")
            }
        }
        print()
    }
}

// Bài 5
func demPhepTinh(){
    print("Nhập vào một số tự nhiên bất kì: ")
    var n = Int(readLine()!)!
    
    var count = 0
    while n != 1 {
        if n % 2 == 0 {
            n = n / 2
        } else {
            n = n * 3 + 1
        }
        count += 1
    }
    print(count)
}

