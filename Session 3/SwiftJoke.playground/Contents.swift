var a = ["🐓", "🥚"]
a.sort()

var b = ["🥚","🐓"]
b.sort()

var c = ["🥚","🐓", "🐣", "🐥", "🍗", "🐔", "🍳", "🐤"]
c.sort()

for (i, el) in c.enumerated() where el > "🐔"{
    print("index: (\(i)) - \(el)")
}

