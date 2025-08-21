//
//  File.swift
//  BoxOffices
//
//  Created by dave on 8/21/25.
//

import Foundation

enum HttpMethod: String {
  case get//, post, delete, put
  
  var capitalizedValue: String {
    self.rawValue.capitalized // .get -> "GET"
  }
}
