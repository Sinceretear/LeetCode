In MATLAB, there is a handy function called reshape which can reshape an m x n matrix into a new one with a different size r x c keeping its original data.

You are given an m x n matrix mat and two integers r and c representing the number of rows and the number of columns of the wanted reshaped matrix.

The reshaped matrix should be filled with all the elements of the original matrix in the same row-traversing order as they were.

If the reshape operation with given parameters is possible and legal, output the new reshaped matrix; Otherwise, output the original matrix.

 

Example 1:


Input: mat = [[1,2],[3,4]], r = 1, c = 4
Output: [[1,2,3,4]]
Example 2:


Input: mat = [[1,2],[3,4]], r = 2, c = 4
Output: [[1,2],[3,4]]


class Solution {
    func matrixReshape(_ mat: [[Int]], _ r: Int, _ c: Int) -> [[Int]] {
        var rows = mat.count
        var columns = mat[0].count
        
        if rows * columns != r * c {return mat} 
        
        var arr = [[Int]]() 
        
        var rn = 0
        var cn = 0
        arr.append([])
        
        for i in 0..<rows {
            for j in 0..<columns {
                arr[rn].append( mat[i][j] )
                cn = cn + 1
                if cn >= c {
                    cn = 0
                    rn = rn + 1
                    if rn < r {
                        arr.append([])
                    }
                }
            }
        }
        return arr
        
    }
}