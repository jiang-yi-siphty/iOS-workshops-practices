import UIKit
//import EventKit
import Foundation

extension Date {
  
  var year: String {
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy"
    return formatter.string(from: self)
  }
  
  var nextYear: String? {
    let calendar = Calendar.current
    let nextYearToday = calendar.date(byAdding: .year, value: 1, to: self)
    return nextYearToday?.year
  }
  
  var month: String {
    let formatter = DateFormatter()
    formatter.dateFormat = "MMMM"
    return formatter.string(from: self)
  }
  
  var monthShort: String {
    let formatter = DateFormatter()
    formatter.dateFormat = "MMM"
    return formatter.string(from: self)
  }
  
  var dateOfMonth: String {
    let formatter = DateFormatter()
    formatter.dateFormat = "d"
    return formatter.string(from: self)
  }
  
  var dayOfWeek: String {
    let formatter = DateFormatter()
    formatter.dateFormat = "EEE"
    return formatter.string(from: self)
  }
  
  var hour24: String {
    let formatter = DateFormatter()
    formatter.dateFormat = "H"
    return formatter.string(from: self)
  }
  
  var hour12: String {
    let formatter = DateFormatter()
    formatter.dateFormat = "h"
    return formatter.string(from: self)
  }
  
  var minutes: String {
    let formatter = DateFormatter()
    formatter.dateFormat = "m"
    return formatter.string(from: self)
  }

}

Date().nextYear
Date().year
Date().month
Date().dateOfMonth
Date().dayOfWeek
Date().hour24
Date().hour12
Date().minutes
// String to DateTime



