import UIKit

class MyHashSet {

    var max = 100
    var array: [Int] = []
    
    /** Initialize your data structure here. */
    init() {
        array = Array(repeating: -1, count: max + 1)
    }
    
    func add(_ key: Int) {
        if key > max {
            let add = Array(repeating: -1, count: key - max)
            array.append(contentsOf: add)
            max = key
        }
        array[key] = key
    }
    
    func remove(_ key: Int) {
        if key > max { return }
        array[key] = -1
    }
    
    /** Returns true if this set contains the specified element */
    func contains(_ key: Int) -> Bool {
        if key > max { return false }
        return (array[key] != -1)
    }
}


let hashSet = MyHashSet()
hashSet.add(1)
hashSet.add(2)
hashSet.add(3)
hashSet.add(5)
hashSet.add(12)
hashSet.add(32)
hashSet.add(125)
hashSet.add(222)
hashSet.add(200)
hashSet.remove(250)
//hashSet.contains(230)
//hashSet.remove(222)
//hashSet.add(1)
//hashSet.add(1)



//hashSet.add(1)
//hashSet.add(2)
//hashSet.contains(1)    // returns true
//hashSet.contains(3)    // returns false (not found)
//hashSet.add(100)
//hashSet.add(601)
//hashSet.add(842)
////hashSet.add(200)
////hashSet.add(201)
////hashSet.add(601)
//hashSet.contains(2)    // returns true
//hashSet.remove(2)
//hashSet.contains(2)    // returns false (already removed)
