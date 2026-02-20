
struct Album {
    var title: String
    let artist: String
    let year: Int

    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
    
    mutating func setTItle(newTitle:String) {
        title = newTitle    
    }
}

var red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
let wings = Album(title: "Wings", artist: "BTS", year: 2016)

print(red.title)
print(wings.artist)

red.printSummary()
wings.printSummary()



red.setTItle(newTitle: "Test")

red.title = "rffdgd"
