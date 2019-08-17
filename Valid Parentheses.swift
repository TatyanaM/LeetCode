//Given a string containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
//
//An input string is valid if:
//
//Open brackets must be closed by the same type of brackets.
//Open brackets must be closed in the correct order.
//Note that an empty string is also considered valid.

func isValid(_ s: String) -> Bool {
    let mapping = [")" : "(", "]" : "[", "}" : "{"]
    var stack = [String]()
    
    
    for each in s {
        if mapping.keys.contains(String(each)) {
            let top = stack.count > 0 ? stack.removeLast() : "%"
            
            if mapping[String(each)] != top {
                return false
            }
        } else {
            stack.append(String(each))
        }
    }
    
    return stack.count == 0
}
