let arr: [Any] = [1, 2, 3, "foo", 4, "bar", 5]
for (i, el) in arr.enumerated() where el is String {
    print("\(i) - \(el)")
}

print()

for (i, c) in "Swift".enumerated() {
    print("\(i): '\(c)'")
}

//https://stackoverflow.com/a/24028458/2073991
