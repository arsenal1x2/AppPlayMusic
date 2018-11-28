//
//  DataService.swift
//  AppPlayMusic
//
//  Created by LTT on 11/28/18.
//  Copyright © 2018 LTT. All rights reserved.
//

import Foundation
import Alamofire

struct DataService {
    static let shared = DataService()

    func fetchData(url:String, complete: @escaping (_ success: Bool, _ error:Error?, _ songs:[Song]?)->()){
        Alamofire.request(url).responseJSON { (response) in
            if let error = response.error {
                complete(false,error,nil)
                return
            } else {
                guard let data = response.data else { return }
                self.createListSongObjectWith(json: data, completion: { (tracks, error) in
                    guard let error = error else {
                        complete(true,nil,tracks)
                        return
                    }
                    complete(false,error,nil)
                })
            }
        }
    }

    private func createListSongObjectWith(json: Data, completion: @escaping (_ data: [Song]?, _ error: Error?) -> Void) {
        do {
            let response = try JSONDecoder().decode(RootClass.self, from: json)
            return completion(response.data?.tracks, nil)
        } catch let error {
            print("Error creating current weather from JSON because: \(error.localizedDescription)")
            return completion(nil, error)
        }
    }
}
