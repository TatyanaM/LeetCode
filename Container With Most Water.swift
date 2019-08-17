//Given n non-negative integers a1, a2, ..., an , where each represents a point at coordinate (i, ai). n vertical lines are drawn such that the two endpoints of line i is at (i, ai) and (i, 0). Find two lines, which together with x-axis forms a container, such that the container contains the most water.
//
//Note: You may not slant the container and n is at least 2.

func maxArea(_ height: [Int]) -> Int {
    var volume = 0
    
    var i = 0
    var k = height.count - 1
    while k > i {
        let minHeight = min(height[i], height[k])
        let cur = minHeight * (k - i)
        volume = max(volume, cur)
        if height[i] < height[k] {
            i += 1
        } else {
            k -= 1
        }
    }
    
    return volume
}
