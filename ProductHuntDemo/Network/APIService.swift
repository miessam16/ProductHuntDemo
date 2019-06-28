//
//  APIService.swift
//
//
//
//  Copyright © 2019 Ahmed. All rights reserved.
//

import Foundation
import Moya

enum APIService {
    case getPostsData
    case getCommentData(postId : String)
}

extension APIService :TargetType{
    
    var headers: [String : String]? {
        var header = ["Content-Type" : "application/json"]
        
        header["Authorization"] = "Bearer " + "f18a42babcbcef0923f0c054223b2619647e0164f8c290a047b6e54c2f98e2a4"
        
        return header
        
    }
    
    var baseURL: URL {
            let url = "https://api.producthunt.com/v1"
            return URL(string: url)!
    }
    
    var path: String {
        switch self {
        case .getPostsData:
            return "/posts"
        case .getCommentData:
            return "/comments"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .getPostsData:
            return .get
        case .getCommentData:
            return .get
        }
    }
    
    var sampleData: Data {
        return Data()
    }
    
    var task: Task {
        
        
        switch self {
        case .getPostsData :
            return .requestPlain
        case .getCommentData(let postId):
            return .requestParameters(parameters: ["sort_by": "created_at" , "order" : "desc" , "search[post_id]" : postId], encoding: URLEncoding.default)
        }
    }
}
