 import UIKit
 
 protocol Creature {
 }
 
 class Animal: Creature {
    var gender: Bool
    var name: String
    
    init(_ name: String, gender: Bool) {
        self.name = name
        self.gender = gender
    }
 }
 
 class Human: Animal {
    var education: String?
    var hobby: String?
    var label: String?
 }
 
 class Pet: Animal {
    var color: String?
    var label: String?
 }
 
 let john = Human("John", gender: true)
 let hellen = Human("Hellen", gender: false)
 let dog = Pet("Huahua", gender: false)
 let cat = Pet("Caffee", gender: true)
 
 let familyA: (Human?, Pet?) = (john, nil)
 let familyB: (Human?, Pet?) = (nil, dog)
 let familyC: (Human?, Pet?) = (nil, nil)
 let familyD: (Human?, Pet?) = (hellen, cat)
 
 let family: (Animal?, Animal?) = (nil, dog)
 switch family {
 case let (variable?, nil), let (nil, variable?):
    print("only have \(variable.name)")
 case let (human?, pet?):
    print("Have both \(human.name) and \(pet.name)")
 case (nil, nil):
    print("Empty family")
 }
 
