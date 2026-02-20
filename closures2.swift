
//***********Some more closures


//an array of numbers we need to sort
let scores = [3, 8, 1, 7, 4, 2, 5, 6, 9, 10, 11]

//this is the closure we use...it goes through multiple iterations of the 
//array scores and returns true if the first number comes before the second
//otherwise it returns false. The secret sauce here is how the sorted:by call works.
//it keeps going through the array comparing what she be in front of what until the
//whole thing is compared at whioch point sorted returns the sorted array and assigns it
//to sortedScores

func descendingOrder(firstNum: Int,secondNum: Int) -> Bool {
    print ("firstNum = \(firstNum)")
    print ("secondNum = \(secondNum)")
    print (firstNum > secondNum)
    return firstNum > secondNum
}

//here we are calling sorted:by and passing in the descendingOrder closure
//sorted now runs descendingOrder multiple times to get the sorted array
let sortedScores = scores.sorted(by: descendingOrder)
print(sortedScores)
// [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
