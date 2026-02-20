
//A set is an unorder list of items with no duplicates
var mySet = Set([1,2,4,3,5])
print (mySet)

//Can insert an item into a set
mySet.insert(7)

print(mySet)

//A dictionary is a collection of key/value pairs. You reference the value by using the key
var myDictionary = ["Value One":1,"Value Two":2]

print(myDictionary["Value One"])

enum colors {
    case red
    case green
    case blue
}
var sky = colors.red

//can change the value of an enum variable shorthand cause it's already of type colors
sky = .blue

//An empty array of strings
var myDrinks: [String] = [String]()

//appending to an array of strings
myDrinks.append("soda")
myDrinks.append("beer")

print(myDrinks)

let numString:Double = 15
print(numString)

//Array - different values in a certain order. Use index to access.
let myArray = [1,2,3,4]
//Dictionary - list of key/value pairs. Reference by key name
let myDict: [String: Int] = ["id":1,"name":4]
//Set - different values but not in an order and no duplicates
let mySet1: Set<String> = Set(["Matt","Sandy","Hayden","Eric","Emily"])
//enum - specify a new type and assign a value in the enum
enum myColors {
    case red,yellow,blue,green
}
var myFavoriteColor = myColors.green

//Checkpoint2

//create the array of strings
let theArray = ["This","is","my","string","array","array"]
//get the count of the items in the array
print(theArray.count)
//create a set from the array
let theSet = Set(theArray)
//get the count of items in the set which by the nature of sets don't have duplicate items
print(theSet.count)

//True && True = True
//True && False = False
//False && False = False

//True || True = True
//True || False = True
//Fasle || False = False

let temp = 57 
switch temp {
case 0..<32:
        print ("It's freezing")
case 32..<50:
    print ("It's a little chilly")
case 50..<75:
    print ("It's very pleasant")
case 75..<90:
    print ("It's a little warm")
default:
    print ("It's hot!")
}


// = is assignment
// == is equivalency check


let myAge = 20
let canDrink = myAge >= 21 ? "Drink up!" : "Hell no!"
//ternary conditional is checked. If it's true, the first value is assign...if false the second value
print (canDrink)

///this is the same code with if. much longer and more complex than the ternary
if myAge >= 21 {
    let canDrink = "Drink up!"
}
    else if myAge < 21 {
        let canDrink = "Hell no!"
    }
print (canDrink)

//ternary can be used outside of assignment statwmwnts as well
let numCats = 5
print(numCats >= 6 ? "That's too many cats" : "Let's get more cats")


//Loops

let systems = ["mine","yours","temp"]

//loop through systems referincing theSystem each time
for theSystem in systems {
    print(theSystem)
}

for i in 1..<10 {
    print("the number is \(i)")
}
// \() is the escape character when you want to use a variable in a string


let names = ["Matt","Sandy","Hayden","Eric","Emily"]
//print the entire array
print(names[0...])
//print certain indexes
print(names[2...4])

//While loops
//Notice the order of statements versus the output
//Prints 0 through 9
var myNumber1 = 0
while myNumber1 < 10 {
    print(myNumber1)
    myNumber1+=1
}

//Prints 1 through 10
var myNumber2 = 0
while myNumber2 < 10 {
    myNumber2+=1
    print(myNumber2)
}

//Random numbers
let randomNumber = Int.random(in: 1...10)
print("The lucky number is \(randomNumber)")



var itemsSold: Int = 0
while itemsSold < 5000 {
    itemsSold += 100
    if itemsSold.isMultiple(of: 10000) {
        print("\(itemsSold) items sold - a big milestone!")
    }
}

var number: Int = 10
while number > 0 {
    number -= 2
    if number.isMultiple(of: 2) {
        print("\(number) is an even number.")
    }
}


var averageScore = 2.5
while averageScore < 15.0 {
    averageScore += 2.5
    print("The average score is \(averageScore)")
}


//continue skips the rest of the loop and moves to the next iteration
//break dumps out of the loop entirely


//labeled statements
bigLoop: for x in names {
    //do something
    break bigLoop
}
//This tells swift to exit the loop and goto bigLoop

//Functions
func myFunction() {
    //sample function
    print("My Function!")
}

myFunction()
myFunction()

func mySecondFunction(firstNum:Int,secondNum:Int) -> Int {
    return firstNum+secondNum
}

print(mySecondFunction(firstNum: 3, secondNum: 5))

//returning a boolean
func checkStrings(string1:String,string2:String) -> Bool {
    if string1.sorted() == string2.sorted() {
        return true    
    } else {
        return false    
    }
}

print(checkStrings(string1: "test", string2: "ttes"))

//can use return by itself to exit a function


//Tuples

func getUser() -> (firstName: String, lastName: String, age: Int) {
    return (firstName: "Matt", lastName: "Pardini",age:47)
}

let user = getUser()
print(user.firstName,user.lastName,user.age)

// Arrays keep order and can have duplicates
// Sets are unordered and can't have duplicates
// Tuples are a combination of multiple values or fixes types rolled into one variable


func greet(_ name: String) {
    print("Hi, \(name)!")
}

greet("Matt")


//Function Default values
//Assign a value to an arguement of a function if it's not specificed when called
func printTimesTables(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5, end: 20)
printTimesTables(for: 8)


//Error Handling

enum MyError:Error{
    case long,simple
}

func CheckForError(_ nyNum: Int) throws -> String {                //Funciton has throws flag before return type
    if nyNum < 10 {                                                    //The number we pass in below will be true here
        throw MyError.long                                        //immediatly dump out of the function
    }
    return "Good"                                                    //otherwsie return the value
}

do {
    let result = try CheckForError(5)                        //Try executing the CheckForError function. Try must be in a do block
     print("Trying 5")
} catch MyError.simple {                                                    //This catch is executed when the throw is hit. 
    print("There's an error")                                            //When catch is executed it can run based on the throw error
                                                                        //from the function
} catch MyError.long {
    print("the number is too simple")
}



//Closures

//a function or block of code that can be assigned to a variable and passed around
// can take parameters but needs special syntax

func myFunc() {
    print ("Hi!")
}

//call the function
myFunc()

//now create a copy
var myNewFunc = myFunc

//assign the code directly to the variable
//the code won't change so use let
let myBetterFunc = {
    print("Yeah this is way better!")
}

myBetterFunc()

let myParameterFunc = { (info: String) -> String in
    return "Hi \(info)"    
}

print(myParameterFunc("Test"))





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


/* so here's my take on closures
 back in the day you did event driven programming.....Button3Pressed() and then that code was execued when you clicked the button
 now that code is stored in a closure, and can be handed off as a sort of instruction sheet....when this happens, you should do this work
 */


let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]

let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
})

print(captainFirstTeam)

