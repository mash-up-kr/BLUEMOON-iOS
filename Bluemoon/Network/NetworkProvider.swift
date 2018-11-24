//
//  NetworkProvider.swift
//  Bluemoon
//
//  Created by 이재성 on 25/11/2018.
//  Copyright © 2018 mashup6th. All rights reserved.
//

import Foundation
import Moya

class NetworkProvider {
    let provider = MoyaProvider<Service>()

    func getSchedule() {
        provider.request(.getSchedule) { result in
            switch result {
            case let .success(value):
                let data = value.data
                let statusCode = value.statusCode
            case let .failure(error):
                _ = error
            }
        }
    }
}
