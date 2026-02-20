
struct Car {
    let model:String
    let numSeats:Int
    var currentGear:Int = 1
    
    mutating func ChangeGear(newGear:Int)
    {
        if newGear < 10 && (newGear == currentGear-1 || newGear == currentGear+1) {
                    currentGear = newGear
        }

    }
    
    mutating func test() {
        
        
        
    }
    
}

var myCar = Car(model: "Fiero", numSeats: 2, currentGear: 1)

print (myCar.currentGear)
myCar.ChangeGear(newGear: 2)
print (myCar.currentGear)
myCar.ChangeGear(newGear: 3)
print (myCar.currentGear)
myCar.ChangeGear(newGear: 10)
print (myCar.currentGear)
