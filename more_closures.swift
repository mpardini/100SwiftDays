let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
print(names)
func backward(s1: String, s2: String) -> Bool {
    return s1<s2
}
var reversedNames = names.sorted(by: backward)
// reversedNames is equal to ["Ewa", "Daniella", "Chris", "Barry", "Alex"]
print(reversedNames)

