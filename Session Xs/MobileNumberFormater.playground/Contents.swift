import UIKit

// MARK: - Mobile Number formatter
fileprivate extension String {
    var groupedMobileNumber: String? {
        guard mobileNumber != nil else { return nil }
        let prefixGroupSize = 4
        let restGroupSize = 3
        let separator: Character = "-"
        var number = mobileNumber ?? ""
        switch number.count {
        case 1...prefixGroupSize:
            return number
        case (prefixGroupSize + 1)...(prefixGroupSize + restGroupSize):
            let index = number.index(number.startIndex, offsetBy: prefixGroupSize)
            number.insert("-", at: index)
            return number
        case (prefixGroupSize + restGroupSize + 1)...(prefixGroupSize + restGroupSize * 2):
            var index = number.index(number.startIndex, offsetBy: prefixGroupSize)
            number.insert("-", at: index)
            index = number.index(number.startIndex, offsetBy: prefixGroupSize + 1 + restGroupSize)
            number.insert(separator, at: index)
            return number
        default:
            return nil
        }
        
    }
    
    
    func substring(to : Int) -> String {
        let toIndex = self.index(self.startIndex, offsetBy: to)
        return String(self[...toIndex])
    }
    
    var mobileNumber: String? {
        let numberSet = "0123456789- "
        guard count > 0, 
            CharacterSet(charactersIn: self).isSubset(of: CharacterSet(charactersIn: numberSet) ) else { return nil }
        var pureNumber = self.replacingOccurrences(of: "-", with: "")
        pureNumber = pureNumber.replacingOccurrences(of: " ", with: "")
        let length = pureNumber.count <= 10 ? pureNumber.count : 10
        self.replacingOccurrences(of: "-", with: "")
        return pureNumber.substring(to: length - 1)
    }
}

"041 23 45 67 89 01 23 45".groupedMobileNumber
"041 23 45 67 89 01 23 45".mobileNumber
"0412-321-3123".groupedMobileNumber
"0412-321-312".groupedMobileNumber
"0412345678".groupedMobileNumber
"04345-678".groupedMobileNumber
"0412-321-312".mobileNumber
"adlfk".mobileNumber
"04345-678a".groupedMobileNumber
"0".groupedMobileNumber
"04".groupedMobileNumber
"041".groupedMobileNumber
"0412".groupedMobileNumber
"04123".groupedMobileNumber
"041234".groupedMobileNumber
"0412345".groupedMobileNumber
"04123456".groupedMobileNumber
"041234567".groupedMobileNumber
"0412345678".groupedMobileNumber
"04123456789".groupedMobileNumber
"041234567890".groupedMobileNumber
"0412345678901".groupedMobileNumber

"".groupedMobileNumber
"0412321-312".groupedMobileNumber
"0412-321312".groupedMobileNumber
"04-12-321-3-1-2".groupedMobileNumber
"0412-321-312".groupedMobileNumber
"0433 0928 85".groupedMobileNumber
"01234567".groupedMobileNumber

