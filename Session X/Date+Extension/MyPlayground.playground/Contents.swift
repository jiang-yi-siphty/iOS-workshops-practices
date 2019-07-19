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

  
  func stripTime() -> Date?{
    let components = Calendar.current.dateComponents([.year, .month, .day], from: self)
    return Calendar.current.date(from: components)
  }
  
  func diff(_ date: Date) -> Int? {
    guard let currentDate = self.stripTime(),
      let date = date.stripTime() else { return nil }
    var calendar = Calendar.current
    calendar.timeZone = TimeZone.current
    return calendar.dateComponents([.day], from: currentDate, to: date).day
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


let date = "2019-06-15"
let formatter = DateFormatter()
formatter.dateFormat = "yyyy-MM-dd"
let windowDate = formatter.date(from: date) ?? Date()
Date().diff(formatter.date(from: date) ?? Date())



