struct School {
    
    var studentCount = 0

    mutating func add(student: String) {
        print("\(student) joined the school.")
        studentCount += 1
    }
}


var mySchool = School()
mySchool.add(student: "Justin Bieber")
print(mySchool.studentCount)



