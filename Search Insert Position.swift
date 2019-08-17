//Given a sorted array and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.
//
//You may assume no duplicates in the array.
//
//

func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    guard nums.count > 0 else {
        return 0
    }
    
    if nums.first! > target {
        return 0
    }
    
    if nums.last! < target {
        return nums.count
    }
    
    var startIndex = nums.count / 2
    if target < nums[startIndex] {
        startIndex = 0
    }
    
    for i in startIndex ..< nums.count {
        if nums[i] >= target {
            return i
        }
    }
    return 0
}
