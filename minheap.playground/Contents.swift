// Min Heap

import Foundation

class minHeap {
    
    var heapList: [Int]
    var size: Int
    
    init() {
        self.heapList = [0]
        self.size = 0
    }
    
    func insert(k: Int) {
        self.heapList.append(k)
        self.size = self.heapList.count
        self.percUp(i: &self.size)
    }
    
    func percUp(i: inout Int) {
        while i / 2 > 0 {
            if self.heapList[i] < self.heapList[i / 2] {
                let tmp = self.heapList[i / 2]
                self.heapList[i / 2] = self.heapList[i]
                self.heapList[i] = tmp
            }
            i = i / 2
        }
    }
    
}

var heap = minHeap()
heap.insert(k: 4)
heap.insert(k: 5)
heap.insert(k: 8)
heap.insert(k: 10)
heap.insert(k: 6)
heap.insert(k: 1)

print(heap.heapList)
