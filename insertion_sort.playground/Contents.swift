// Insertion Sort
import Foundation

func insertionSort(_ arr: inout [Int]) {
    
    for k in 1..<arr.count {
        let value = arr[k]
        var position = k
        while position > 0 && arr[position - 1] > value {
            arr[position] = arr[position - 1]
            position -= 1
        }
        arr[position] = value
    }
    
}

var array = [1, 5, 3, 6, 7, 3, 1, 4, 6, 8, 9, 346, 2, 234, 8, 75, 34, 435]
print(array)
insertionSort(&array)
print(array)
