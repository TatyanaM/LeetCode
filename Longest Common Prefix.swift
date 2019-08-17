//Write a function to find the longest common prefix string amongst an array of strings.
//
//If there is no common prefix, return an empty string "".

func longestCommonPrefix(_ strs: [String]) -> String {
    if strs.isEmpty {
        return ""
    }
    
    let first = Array(strs)[0]
    
    for i in 0 ..< first.count {
        let index = first.index(first.startIndex, offsetBy: i)
        let prefix = first[first.startIndex...index]
        for j in 1 ..< strs.count {
            let str = Array(strs)[j]
            if !str.hasPrefix(prefix) {
                if i == 0 {
                    return ""
                } else {
                    let index = first.index(first.startIndex, offsetBy: i - 1)
                    let prefix = first[first.startIndex...index]
                    return String(prefix)
                }
            }
        }
    }
    
    return first
}
