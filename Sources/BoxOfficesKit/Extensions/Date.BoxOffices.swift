//
//  File.swift
//  BoxOffices
//
//  Created by dave on 8/21/25.
//

import Foundation

extension Date {
  var yesterday: Date? {
    Calendar.current.date(byAdding: .day, value: -1, to: self)
  }
}
