//
//  HTTPRequestTool.swift
//  RXSwiftDemo
//
//  Created by 新龙科技 on 2017/2/9.
//  Copyright © 2017年 新龙科技. All rights reserved.
//

import UIKit
import Moya
//let HttpTool = 
let HttpTool = RxMoyaProvider<HTTPTool>()
enum HTTPTool {
    case unread
}
extension HTTPTool : TargetType {
    public var baseURL: URL {
        return URL(string: "http://172.16.1.120:8080")!
    }
    
    public var path: String {
        switch self {
        case .unread:
            return "/api/report/query"
        }
    }
    
    public var method: Moya.Method {
        switch self {
        case .unread:
            return .post
        }
    }
    
    public var parameters: [String : Any]? {
        switch self {
        case .unread:
            return ["pageNumber": "1", "app_token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdHVkZW50X2lkIjoiMmM5MDgxODU1OTc3MDlkYTAxNTk3NzU5ZDM5MjAwMDMiLCJpYXQiOjE0ODY2MjY1OTYyOTMsImNsaWVudF9pZCI6IjU1NTczOUVDLUEzRTktNEVFOS04RThGLTNBQjE3QzcyRjhGRSJ9.YrCTVH3_GC23bhElGmq73qtNJE_md9PZxoGVsyn24Fk"]
        }
    }
    
    public var parameterEncoding: ParameterEncoding {
        switch self {
        case .unread:
            return URLEncoding.default
        }
    }
    
    public var task: Task {
        switch self {
        case .unread:
            return .request
        }
    }
    
    public var sampleData: Data {
        switch self {
        case .unread:
            return "".data(using: String.Encoding.utf8)!
        }
    }

}
