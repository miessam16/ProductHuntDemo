//
//  HomePresenter.swift
//
//
//  Created by Ahmed on 8/27/18.
//  Copyright © 2019 Ahmed. All rights reserved.
//

import UIKit
import Moya_ObjectMapper
import Moya
import ObjectMapper


class HomePresenter: NSObject {
    
    lazy var apiProvider: MoyaProvider<APIService> = {
        return MoyaProvider<APIService>(plugins: [NetworkLoggerPlugin(verbose: true)])
    }()
    
    
    func loadPosts(completionHandler: @escaping (String , [Post]?) -> Void) {
        var posts : [Post]?
        
        apiProvider.request(.getPostsData, completion: { result in
            switch result {
            case let .success(response):
                do {
                    print("response success")
                    let loadedData = try response.mapObject(PostResponse.self)
                    
//                    print(response.data)
//                    print(response.description)
                    posts = loadedData.posts!
                    completionHandler("success" , posts!)
                }
                catch {
                    // Server Error
                    print("Request is not succesfull From Server ")
                    completionHandler("other" , posts)
                }
            case let .failure(error):
                // Network Error
                print(error.errorDescription ?? "Unknown error description")
                completionHandler("other" , posts)
            }
        })
    }
    
    
    func loadComments(postId : String ,  completionHandler:  @escaping (String , [Comment]?) -> Void) {
        var commentsData : [Comment]?
        
        apiProvider.request(.getCommentData(postId: postId), completion: { result in
            switch result {
            case let .success(response):
                do {
                    print("response success")
                    let loadedData = try response.mapObject(CommentResponse.self)
                    commentsData = loadedData.comments!
                    completionHandler("success" , commentsData)
                }
                catch {
                    // Server Error
                    print("Request is not succesfull From Server ")
                    completionHandler("other" , commentsData)
                }
            case let .failure(error):
                // Network Error
                print(error.errorDescription ?? "Unknown error description")
                completionHandler("other" , commentsData)
            }
        })
    }
    
    
    
}
