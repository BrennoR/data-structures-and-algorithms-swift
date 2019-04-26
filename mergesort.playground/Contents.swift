// Merge Sort

import Foundation


func mergesort(arr: inout [Int]) {
    if arr.count > 1 {
        let mid = arr.count / 2
        var left = Array(arr[..<mid])
        var right = Array(arr[mid...])
        
        mergesort(arr: &left)
        mergesort(arr: &right)
        
        var i = 0
        var j = 0
        var k = 0
        while i < left.count && j < right.count {
            if left[i] <= right[j] {
                arr[k] = left[i]
                i += 1
            } else {
                arr[k] = right[j]
                j += 1
            }
            k += 1
        }
        
        while i < left.count {
            arr[k] = left[i]
            i += 1
            k += 1
        }
        
        while j < right.count {
            arr[k] = right[j]
            j += 1
            k += 1
        }
    }
}

var array = [3, 7, 23, 5, 52, 78, 4, 3, 1, 8]
print(array)

mergesort(arr: &array)
print(array)
