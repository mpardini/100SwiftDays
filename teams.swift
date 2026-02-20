
let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
print (team)
let sortedTeam = team.sorted()
print (sortedTeam)
//print(sortedTeam)


func captainFirstSorted(name1:String, name2:String) -> Bool {
    print ("name1 = \(name1)")
    print ("name2 = \(name2)")
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    return name1 < name2    
}

let captainFirstTeam = team.sorted(by: captainFirstSorted)
print(captainFirstTeam)
