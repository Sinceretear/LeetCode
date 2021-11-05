//easy solution
func easyMerge(arr1: [Int],arr2: [Int]) -> [Int] {
    var newArr = [Int]()
    for x in arr2 {
        newArr.append(x)
    }
    return newArr.sorted()
}
easyMerge(arr1: [0,1,2,3,50], arr2: [8,9,10])

func mergeSortedArrays(arr1: inout [Int], arr2: inout [Int]) -> [Int] {
    
    var mergedArr = [Int]()
    var i = 0
    var j = 0
    
    while i < arr1.count && j < arr2.count {
        if arr1[i] < arr2[j] {
            mergedArr.append(arr1[i])
            i += 1
        } else {
            mergedArr.append(arr2[j])
            j += 1
        }
    }
    
    while i < arr1.count {
        mergedArr.append(arr1[i])
        i += 1
    }

    while j < arr2.count {
        mergedArr.append(arr2[j])
        j += 1
    }
    return mergedArr
}

var a = [1,2,3,4,50]
var b = [8,9,10,11]

var sms = mergeSortedArrays(arr1: &a, arr2: &b)

print(sms)



Still don't under stand this problem but this is my second try

class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        
        var m = m
        var n = n
        
           while m > 0 && n > 0 {
               if nums1[m-1] > nums2[n-1]{
                   nums1[m+n-1] = nums1[m-1]
                   m = m - 1
               } else {
                   nums1[m+n-1] = nums2[n-1]
                   n = n - 1
               }
           }
            while n > 0 {
                nums1[m+n-1] = nums2[n-1]
                n = n - 1
            }
    }
}

