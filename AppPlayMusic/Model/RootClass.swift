//
//  RootClass.swift
//  AppPlayMusic
//
//  Created by LTT on 11/28/18.
//  Copyright © 2018 LTT. All rights reserved.
//

import Foundation

struct RootClass: Codable {
    let data: DataResponse?

}

extension RootClass {
    enum CodingKeys: String, CodingKey {
        case data = "data"
    }
}
