//
//  stationInfo.swift
//  556TransportMateFinal
//
//  Created by Winter on 12/6/18.
//  Copyright © 2018 SFSU. All rights reserved.
//

import Foundation

struct StationInfo : Decodable {
    let STATIONNAME: String
    let LATITUDE: String
    let LONGITUDE: String
    let DESCRIPTION: String
    let DISTANCEFROMSF1: String
    let ADDRESS: String
}


