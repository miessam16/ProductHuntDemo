//
//  Comment.swift
//  ProductHuntDemo
//
//  Created by Ahmed Hesham on 6/28/19.
//  Copyright © 2019 Ahmed Hesham. All rights reserved.
//

import Foundation
import ObjectMapper


class Comment : NSObject, NSCoding, Mappable{
    
    var body : String?
    var childCommentsCount : Int?
    var createdAt : String?
    var id : Int?
    var parentCommentId : AnyObject?
    var post : Post?
    var postId : Int?
    var sticky : Bool?
    var subjectId : Int?
    var subjectType : String?
    var url : String?
    var user : Maker?
    var userId : Int?
    var votes : Int?
    
    
    class func newInstance(map: Map) -> Mappable?{
        return Comment()
    }
    required init?(map: Map){}
    private override init(){}
    
    func mapping(map: Map)
    {
        body <- map["body"]
        childCommentsCount <- map["child_comments_count"]
        createdAt <- map["created_at"]
        id <- map["id"]
        parentCommentId <- map["parent_comment_id"]
        post <- map["post"]
        postId <- map["post_id"]
        sticky <- map["sticky"]
        subjectId <- map["subject_id"]
        subjectType <- map["subject_type"]
        url <- map["url"]
        user <- map["user"]
        userId <- map["user_id"]
        votes <- map["votes"]
        
    }
    
    /**
     * NSCoding required initializer.
     * Fills the data from the passed decoder
     */
    @objc required init(coder aDecoder: NSCoder)
    {
        body = aDecoder.decodeObject(forKey: "body") as? String
        childCommentsCount = aDecoder.decodeObject(forKey: "child_comments_count") as? Int
        createdAt = aDecoder.decodeObject(forKey: "created_at") as? String
        id = aDecoder.decodeObject(forKey: "id") as? Int
        parentCommentId = aDecoder.decodeObject(forKey: "parent_comment_id") as? AnyObject
        post = aDecoder.decodeObject(forKey: "post") as? Post
        postId = aDecoder.decodeObject(forKey: "post_id") as? Int
        sticky = aDecoder.decodeObject(forKey: "sticky") as? Bool
        subjectId = aDecoder.decodeObject(forKey: "subject_id") as? Int
        subjectType = aDecoder.decodeObject(forKey: "subject_type") as? String
        url = aDecoder.decodeObject(forKey: "url") as? String
        user = aDecoder.decodeObject(forKey: "user") as? Maker
        userId = aDecoder.decodeObject(forKey: "user_id") as? Int
        votes = aDecoder.decodeObject(forKey: "votes") as? Int
        
    }
    
    /**
     * NSCoding required method.
     * Encodes mode properties into the decoder
     */
    @objc func encode(with aCoder: NSCoder)
    {
        if body != nil{
            aCoder.encode(body, forKey: "body")
        }
        if childCommentsCount != nil{
            aCoder.encode(childCommentsCount, forKey: "child_comments_count")
        }
        if createdAt != nil{
            aCoder.encode(createdAt, forKey: "created_at")
        }
        if id != nil{
            aCoder.encode(id, forKey: "id")
        }
        if parentCommentId != nil{
            aCoder.encode(parentCommentId, forKey: "parent_comment_id")
        }
        if post != nil{
            aCoder.encode(post, forKey: "post")
        }
        if postId != nil{
            aCoder.encode(postId, forKey: "post_id")
        }
        if sticky != nil{
            aCoder.encode(sticky, forKey: "sticky")
        }
        if subjectId != nil{
            aCoder.encode(subjectId, forKey: "subject_id")
        }
        if subjectType != nil{
            aCoder.encode(subjectType, forKey: "subject_type")
        }
        if url != nil{
            aCoder.encode(url, forKey: "url")
        }
        if user != nil{
            aCoder.encode(user, forKey: "user")
        }
        if userId != nil{
            aCoder.encode(userId, forKey: "user_id")
        }
        if votes != nil{
            aCoder.encode(votes, forKey: "votes")
        }
        
    }
    
}
