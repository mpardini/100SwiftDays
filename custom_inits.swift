
struct Player {
    let name: String    
    let number: Int  
    
    //init is called when the variable 
    init(name:String, number:Int) {
        //all struct properites must be initialized
        //self refers to the our own variables
        self.name = name    
       self.number = number
    }
}

let player = Player(name: "Megan R", number: 15)
