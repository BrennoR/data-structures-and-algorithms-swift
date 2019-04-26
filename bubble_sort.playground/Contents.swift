// Bubble Sort
import Foundation

func bubbleSort(_ arr: inout [Int]) {
    
    var sorted = false
    
    while sorted == false {
        sorted = true
        for i in 0..<arr.count - 1 {
            if arr[i] > arr[i + 1] {
                sorted = false
                let temp = arr[i]
                arr[i] = arr[i + 1]
                arr[i + 1] = temp
            }
        }
    }
    
}

var array = [1, 5, 3, 6, 7, 3, 1, 4, 6, 8, 9, 346, 2, 234, 8, 75, 34, 435]
print(array)
bubbleSort(&array)
print(array)
