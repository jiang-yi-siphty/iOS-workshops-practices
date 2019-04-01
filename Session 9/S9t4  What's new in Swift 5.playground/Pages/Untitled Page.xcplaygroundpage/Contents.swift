let times = [
    "first": 2,
    "second": 43,
    "three": 12,
    "four": 3
]

let compact = times.compactMap({ return $0.value > 10 ? $0 : nil })
print(compact)

let filter = times.filter { $0.value > 10
}
print(filter)
