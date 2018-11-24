//
//  NetworkLayer.swift
//  Bluemoon
//
//  Created by 이재성 on 25/11/2018.
//  Copyright © 2018 mashup6th. All rights reserved.
//

import Foundation
import Moya

enum Service {
    case getSchedule
}

extension Service: TargetType {
    var baseURL: URL { return URL(string: "http://192.168.1.230:8080/")! }
    var path: String {
        switch self {
        case .getSchedule:
            return "v1/schedule/list"
        }
    }
    var method: Moya.Method {
        switch self {
        case .getSchedule:
            return .get
        }
    }
    var task: Task {
        switch self {
        case .getSchedule: 
            return .requestPlain
        }
    }
    var sampleData: Data {
        switch self {
        case .getSchedule:
            return "Half measures are as bad as nothing at all.".utf8Encoded
        }
    }
    var headers: [String: String]? {
        return ["Content-type": "application/json"]
    }
}

private extension String {
    var urlEscaped: String {
        return addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)!
    }

    var utf8Encoded: Data {
        return data(using: .utf8)!
    }
}
