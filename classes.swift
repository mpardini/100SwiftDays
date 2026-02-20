
struct Resolution {
    var width = 0
    var height = 0
}
class VideoMode {
    var resolution = Resolution()
    var interflaced = false
    var frameRate = 0.0
    var name: String?
}
var someVideoMode = VideoMode()

someVideoMode.frameRate = 4.5

print("width is \(someVideoMode.resolution.width)")

var anotherVideoMode = someVideoMode

someVideoMode.frameRate = 25.0
anotherVideoMode.frameRate = 35.0

print(someVideoMode.frameRate)

class myVideo : VideoMode {
    
    override init() {
    }
    
    
}





/* Struct and enums are value types.
// when creating copies they co-y the values of member properties and can be chnaged independetly*/


/* Classes are ref types. Like pointers. when you create a copy of a class instance the copy refers to the original. so change a member property in the copy and the original gets updated as well.
 
 use === and !=== to determine if 2 instances of a class refer to the same class instance*/


/*
 === is identical to
 == is equal to
 */

