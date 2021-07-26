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
