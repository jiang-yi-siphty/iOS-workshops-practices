import UIKit

var v1 = ""
var v2 = "7.8.9"
v1.compare(v2, options: .numeric) == .orderedSame
v1.compare(v2, options: .numeric) == .orderedAscending
v1.compare(v2, options: .numeric) == .orderedDescending

v1 = "18.8.1000000009"
v2 = "18.8.9"
v1.compare(v2, options: .numeric) == .orderedSame
v1.compare(v2, options: .numeric) == .orderedAscending
v1.compare(v2, options: .numeric) == .orderedDescending

v1 = "18.1800.9"
v2 = "18.800.9"
v1.compare(v2, options: .numeric) == .orderedSame
v1.compare(v2, options: .numeric) == .orderedAscending
v1.compare(v2, options: .numeric) == .orderedDescending

v1 = "18.180.1000000009"
v2 = "18.800.9"
v1.compare(v2, options: .numeric) == .orderedSame
v1.compare(v2, options: .numeric) == .orderedAscending
v1.compare(v2, options: .numeric) == .orderedDescending

v1 = "18.180.1000000009"
v2 = "8.800.9"
v1.compare(v2, options: .numeric) == .orderedSame
v1.compare(v2, options: .numeric) == .orderedAscending
v1.compare(v2, options: .numeric) == .orderedDescending

v1 = "10.1.1"
v2 = "x.x.x"
v1.compare(v2, options: .numeric) == .orderedSame
v1.compare(v2, options: .numeric) == .orderedAscending
v1.compare(v2, options: .numeric) == .orderedDescending

v1 = "zzzzzzz"
v2 = "zzzzzzz"
v1.compare(v2, options: .numeric) == .orderedSame
v1.compare(v2, options: .numeric) == .orderedAscending
v1.compare(v2, options: .numeric) == .orderedDescending
