
let scores = [3, 8, 1, 7, 4, 2, 5, 6, 9, 10, 11]

func descendingOrder(firstNum: Int,secondNum: Int) -> Bool {
    print ("firstNum = \(firstNum)")
    print ("secondNum = \(secondNum)")
    print (firstNum > secondNum)
    return firstNum > secondNum
}

let sortedScores = scores.sorted(by: descendingOrder)
print(sortedScores)
// [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]

