//Given an array of integers, return indices of the two numbers such that they add up to a specific target.
//
//You may assume that each input would have exactly one solution, and you may not use the same element twice.

// Brute Force, O(n^2)
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for i in 0 ..< nums.count {
            for j in i+1 ..< nums.count {
                if nums[i] + nums[j] == target {
                    return [j, i]
                }
            }
        }
        return [Int]()
    }
}
