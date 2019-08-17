//Given an array of integers, find if the array contains any duplicates.
//
//Your function should return true if any value appears at least twice in the array, and it should return false if every element is distinct.
//
//Example 1:
//
//Input: [1,2,3,1]
//Output: true

func containsDuplicate(_ nums: [Int]) -> Bool {
    if nums.isEmpty || nums.count == 1 {
        return false
    }
    
    let sorted = nums.sorted()
    var duplicate = false
    for i in 0 ..< sorted.count - 1 {
        if sorted[i] == sorted[i+1] {
            duplicate = true
            break
        }
    }
    return duplicate
}
