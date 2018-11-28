//
//  Data.swift
//  AppPlayMusic
//
//  Created by LTT on 11/28/18.
//  Copyright © 2018 LTT. All rights reserved.
//

import Foundation

struct DataResponse: Codable {
    let country: String
    let tracks: [Song]
}

extension DataResponse {
    enum CodingKeys: String, CodingKey {
        case country
        case tracks
    }
}
