// Selection Sort
import Foundation

func selectionSort(_ arr: inout [Int]) {
    for k in 0..<arr.count - 1 {
        var minIndex = k
        for i in k..<arr.count {
            if arr[i] < arr[minIndex] {
                minIndex = i
            }
        }
        let temp = arr[minIndex]
        arr[minIndex] = arr[k]
        arr[k] = temp
    }
}

var array = [1, 5, 3, 6, 7, 3, 1, 4, 6, 8, 9, 346, 2, 234, 8, 75, 34, 435]
print(array)
selectionSort(&array)
print(array)
