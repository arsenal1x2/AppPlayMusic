//
//  Song.swift
//  AppPlayMusic
//
//  Created by LTT on 11/8/18.
//  Copyright © 2018 LTT. All rights reserved.
//

import Foundation

class Song: CustomStringConvertible, Comparable, Codable {
    var description: String {return name}
    var singer: String
    var name: String
    var avarta: String
    var lyric: String
    var id: String
    var url: String

    init(id: String, singer: String, name: String, avarta: String, lyric: String, url: String) {
        self.singer = singer
        self.name = name
        self.avarta = avarta
        self.lyric = lyric
        self.id = id
        self.url = url
    }

    static func ==(lhs: Song, rhs: Song) -> Bool {
        return lhs.name == rhs.name
    }

    static func <(lhs: Song, rhs: Song) -> Bool {
        return lhs.name < rhs.name
    }

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case avarta = "avatar"
        case url = "url"
        case lyric = "lyric"
        case singer = "singer"
    }
}
