// Quick Sort
import Foundation

func quickSort(_ arr: inout [Int]) {
    quickSortHelper(&arr, first: 0, last: arr.count - 1)
}

func quickSortHelper(_ arr: inout [Int], first: Int, last: Int) {
    if first < last {
        let splitPoint = partition(&arr, first: first, last: last)
        
        quickSortHelper(&arr, first: first, last: splitPoint - 1)
        quickSortHelper(&arr, first: splitPoint + 1, last: last)
    }
}

func partition(_ arr: inout [Int], first: Int, last: Int) -> Int {
    let pivot = arr[first]
    
    var leftmark = first + 1
    var rightmark = last
    
    var done = false
    while done == false {
        while leftmark <= rightmark && arr[leftmark] <= pivot {
            leftmark += 1
        }
        
        while arr[rightmark] >= pivot && rightmark >= leftmark {
            rightmark -= 1
        }
        
        if rightmark < leftmark {
            done = true
        } else {
            let temp = arr[leftmark]
            arr[leftmark] = arr[rightmark]
            arr[rightmark] = temp
        }
    }
    let temp = arr[first]
    arr[first] = arr[rightmark]
    arr[rightmark] = temp
    
    return rightmark
}

var array = [1, 5, 3, 6, 7, 3, 1, 4, 6, 8, 9, 346, 2, 234, 8, 75, 34, 435]
print(array)
quickSort(&array)
print(array)
