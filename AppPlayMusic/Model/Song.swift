//
//  Song.swift
//  AppPlayMusic
//
//  Created by LTT on 11/8/18.
//  Copyright © 2018 LTT. All rights reserved.
//

import Foundation
class Song:CustomStringConvertible,Comparable {
    var description: String {return name}

    var singer:String
    var name:String
    var time:String
    init(singer:String,name:String,time:String) {
        self.singer = singer
        self.name = name
        self.time = time
    }
    static func ==(lhs: Song, rhs: Song) -> Bool {
        return lhs.name == rhs.name
    }

    static func <(lhs: Song, rhs: Song) -> Bool {
        return lhs.name < rhs.name
    }
}

