enum NumberError : Error {
    case OutOfBounds,noroot
}

func GetSquareRoot(_ theNum:Int) throws -> Int {
    if theNum < 1 || theNum > 10000 {
        throw NumberError.OutOfBounds
    }
    for i in 1...10000 {
        if i*i == theNum {
            return i
        }
    }
    throw NumberError.noroot
}

let keyNumber = 10000
do {
    let theSquareRoot = try GetSquareRoot(keyNumber)
    print("The square root of \(keyNumber) is \(theSquareRoot)")
} catch NumberError.OutOfBounds {
    print("The number needs to be between 1 and 10,000")
} catch NumberError.noroot {
    print("Unable to find a root for \(keyNumber)")
}


