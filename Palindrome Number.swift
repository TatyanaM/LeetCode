// Determine whether an integer is a palindrome. An integer is a palindrome when it reads the same backward as forward.

func isPalindrome(_ x: Int) -> Bool {
    var x = x
    if x < 0 || ( x % 10 == 0 && x != 0) {
        return false
    }
    var poli = 0
    while x > poli {
        poli = poli * 10 + x % 10
        x /= 10
    }
    
    return x == poli || x == poli / 10
    
}
