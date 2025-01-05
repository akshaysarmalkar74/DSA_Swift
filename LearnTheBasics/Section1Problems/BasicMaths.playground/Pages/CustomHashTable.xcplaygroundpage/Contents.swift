import Foundation

class HashTable {
    private var keyMap: [[(String, String)]]
    private let size: Int
    private let weirdPrime = 31

    init(size: Int = 53) {
        self.size = size
        self.keyMap = Array(repeating: [], count: size)
    }

    private func hash(_ key: String) -> Int {
        var total = 0
        let lengthToConsider = min(key.count, 100)
        
        for (i, char) in key.prefix(lengthToConsider).enumerated() {
            if let asciiValue = char.asciiValue {
                let value = Int(asciiValue) - 96
                total = (total * weirdPrime + value) % size
            }
        }
        
        return total
    }
    
    func set(_ key: String, value: String) {
        let index = hash(key)
        // Check if key already exists
        if let fIndex = keyMap[index].firstIndex(where: { $0.0 == key }) {
            // Update the value
            keyMap[index][fIndex] = (key, value)
        } else {
            keyMap[index].append((key, value))
        }
    }
    
    func get(_ key: String) -> String? {
        let index = hash(key)
        if let requiredTuple = keyMap[index].first(where: { $0.0 == key }) {
            return requiredTuple.1
        }
        return nil
    }
    
    func keys() -> [String] {
        return keyMap.flatMap { $0 }.map { $0.0 }
    }
    
    func values() -> Set<String> {
        return Set(keyMap.flatMap { $0 }.map { $0.1 })
    }
}

