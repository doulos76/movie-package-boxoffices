//
//  File.swift
//  BoxOffices
//
//  Created by dave on 8/21/25.
//

import Foundation

struct BoxOfficeResponse: Decodable {
  let boxOfficeResult: BoxOfficeResult
  
  struct BoxOfficeResult: Decodable {
    let dailyBoxOfficeList: [Movie]
  }
}
