import UIKit

////705
//class MyHashMap {
//
//    struct HashMap {
//        var key: Int
//        var value: Int
//    }
//    var array: [HashMap]
//
//    /** Initialize your data structure here. */
//    init() {
//        self.array = []
//    }
//
//    /** value will always be non-negative. */
//    func put(_ key: Int, _ value: Int) {
//        let data = HashMap(key: key, value: value)
//        for (index, element) in self.array.enumerated() where element.key == key {
//            self.array[index] = data
//            return
//        }
//        self.array.append(data)
//    }
//
//    /** Returns the value to which the specified key is mapped, or -1 if this map contains no mapping for the key */
//    func get(_ key: Int) -> Int {
//        for element in self.array where element.key == key {
//            return element.value
//        }
//        return -1
//    }
//
//    /** Removes the mapping of the specified value key if this map contains a mapping for the key */
//    func remove(_ key: Int) {
//        for (index, element) in self.array.enumerated() where element.key == key {
//            self.array.remove(at: index)
//            return
//        }
//    }
//}

//705
class MyHashMap {

//    All keys and values will be in the range of [0, 1000000].
//    The number of operations will be in the range of [1, 10000].
    var array: [Int]

    /** Initialize your data structure here. */
    init() {
        self.array = Array(repeating: -1, count: 1000001)
    }

    /** value will always be non-negative. */
    func put(_ key: Int, _ value: Int) {
        self.array[key] = value
    }

    /** Returns the value to which the specified key is mapped, or -1 if this map contains no mapping for the key */
    func get(_ key: Int) -> Int {
        return self.array[key]
    }

    /** Removes the mapping of the specified value key if this map contains a mapping for the key */
    func remove(_ key: Int) {
        self.array[key] = -1
    }
}

let obj = MyHashMap()
obj.put(1, 1)
obj.put(2, 2)
obj.get(1) // returns 1
obj.get(3) // returns -1 (not found)
obj.put(2, 1) // update the existing value
obj.get(2) // returns 1
obj.remove(2) // remove the mapping for 2
obj.get(2) // returns -1 (not found)


//class MyHashMap {
//
//    var array = [Int]()
//
//    /** Initialize your data structure here. */
//    init() {
//
//    }
//
//    /** value will always be non-negative. */
//    func put(_ key: Int, _ value: Int) {
//        if array.count <= key {
//            array += Array(repeating: -1, count: key - array.count + 1)
//        }
//
//        array[key] = value
//    }
//
//    /** Returns the value to which the specified key is mapped, or -1 if this map contains no mapping for the key */
//    func get(_ key: Int) -> Int {
//        guard key < array.count else { return -1 }
//        return array[key]
//    }
//
//    /** Removes the mapping of the specified value key if this map contains a mapping for the key */
//    func remove(_ key: Int) {
//        guard key < array.count else { return }
//        array[key] = -1
//    }
//}
