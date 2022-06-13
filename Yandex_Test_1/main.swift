//
//  main.swift
//  Yandex_Test_1
//
//  Created by Fed on 13.06.2022.
//

import Foundation



var startCoordinates: Int?
var points: Int?
var pointCoordinates: [Int] = []

var array: [Int] = []
var totalDistance = 0

let arrayFirstLine = readLine()?.split(separator: Character(" ")).map(String.init).map(Int.init)
let arraySecondLine = readLine()?.split(separator: Character(" ")).map(String.init).map(Int.init)

if arrayFirstLine != nil, arrayFirstLine?.first != nil, arrayFirstLine?.last != nil , arrayFirstLine?.first! != nil, arrayFirstLine?.last! != nil{
    startCoordinates = arrayFirstLine!.first!!
    points = arrayFirstLine!.last!!
}

if arraySecondLine != nil, arraySecondLine?.first != nil, arraySecondLine?.last != nil , arraySecondLine?.first! != nil, arraySecondLine?.last! != nil{
    pointCoordinates = arraySecondLine!.compactMap {$0}
}



func calculate (startCoordinates: Int, howManyPoints: Int, coordinates: [Int])  {
    _ = coordinates.map { num in
        array.append(abs(num - startCoordinates))
    }
    
    array.sort()
    
    for i in 1...array.count - 1 {
        totalDistance += array[i] - array[0]
        
    }
    totalDistance += array[0]
    print(totalDistance)
    
    
    
}

calculate(startCoordinates: startCoordinates!, howManyPoints: points!, coordinates: pointCoordinates)

//10 4
//33 44 55 66
//тестовый набор данных на ввод в консоль, где 10 - стартоваря координата магазина, 4 - кол-во доставок, числа во второй строке – координаты точек доставки
