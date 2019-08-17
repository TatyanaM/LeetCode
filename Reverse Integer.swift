//Given a 32-bit signed integer, reverse digits of an integer.

func reverse(_ x: Int) -> Int {
    var x = x
    var rev = 0
    
    while x != 0 {
        let z = x % 10
        x /= 10
        rev = rev * 10 + z
    }
    
    return (rev > Int32.max || rev < Int32.min) ? 0 : rev
}
