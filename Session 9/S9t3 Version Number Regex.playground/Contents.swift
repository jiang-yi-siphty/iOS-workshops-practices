import UIKit

fileprivate extension String {
  
  func isValid(withRegex regex: String) -> Bool {
    do {
      let regex = try NSRegularExpression(pattern: regex, options: .caseInsensitive)
      return regex.firstMatch(in: self, options: .reportCompletion, range: NSRange(location: 0, length: count)) != nil
    } catch {
      return false
    }
  }
  
  var isValidAppVersionNumber: Bool {
    let versionRegex = "^\\d{0,3}[0-9]\\.\\d{0,3}[0-9]\\.\\d{0,3}[0-9]$"
    return isValid(withRegex: versionRegex)
  }
  
  var isValidAppVersionNumber2: Bool {
    let versionRegex = "^\\d{0,2}[0-9](\\.\\d{0,3}[0-9]){2}$"
    return isValid(withRegex: versionRegex)
  }
  
}

"1.1.1".isValidAppVersionNumber2
"asdfa1.1.1klajfd".isValidAppVersionNumber2
"asdf.asd.asdf".isValidAppVersionNumber2
"0.0.0".isValidAppVersionNumber2
"1..1".isValidAppVersionNumber2
"".isValidAppVersionNumber2
"x.x.x".isValidAppVersionNumber2
"1234.1.1".isValidAppVersionNumber2
"12345.1.1".isValidAppVersionNumber2
"1234.1234.1234.1234.1234".isValidAppVersionNumber2
"1.2.3".isValidAppVersionNumber2
"12.123.123".isValidAppVersionNumber2
"12.123.1234".isValidAppVersionNumber2
"12.123.12".isValidAppVersionNumber2
"12.123.123.1".isValidAppVersionNumber2


