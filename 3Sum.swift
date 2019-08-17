//Given an array nums of n integers, are there elements a, b, c in nums such that a + b + c = 0? Find all unique triplets in the array which gives the sum of zero.
//
//Note:
//
//The solution set must not contain duplicate triplets


func threeSum(_ nums: [Int]) -> [[Int]] {
    var result = Set<[Int]>()
    var sorted = nums.sorted()
    
    
    for i in 0 ..< sorted.count {
        var j = i + 1
        var k = sorted.count - 1
        while j < k {
            let sum = sorted[i] + sorted[j] + sorted[k]
            if sum == 0 {
                result.insert([sorted[i], sorted[j], sorted[k]])
                j += 1
            } else if sum < 0 {
                j += 1
            } else {
                k -= 1
            }
        }
    }
    return Array(result)
}
