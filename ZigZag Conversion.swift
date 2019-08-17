//The string "PAYPALISHIRING" is written in a zigzag pattern on a given number of rows like this: (you may want to display this pattern in a fixed font for better legibility)
//And then read line by line: "PAHNAPLSIIGYIR"
//
//Write the code that will take a string and make this conversion given a number of rows:


func convert(_ s: String, _ numRows: Int) -> String {
    
    if numRows == 1 {
        return s
    }
    
    var result = [String](repeating: "", count: numRows)
    var down = false
    var curRow =  0
    for c in s {
        result[curRow] += String(c)
        if curRow == 0 || curRow == numRows - 1 {
            down = !down
        }
        curRow += down ? 1 : -1
    }
    
    var str = ""
    for s in result {
        str += s
    }
    return str
}
