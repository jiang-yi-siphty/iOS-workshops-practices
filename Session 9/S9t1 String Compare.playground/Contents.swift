import UIKit

var s1 = "This is a string"
var s2 = "7.8.9"
s1.caseInsensitiveCompare(s2) == .orderedSame

s1 = "abcd"
s2 = "dcba"
s1.compare(s2, options: .backwards) == .orderedSame
s1.compare(s2, options: .backwards) == .orderedDescending
s1.compare(s2, options: .backwards) == .orderedAscending

s1 = "This is a string"
s2 = "This is a string"
s1.caseInsensitiveCompare(s2) == .orderedSame
