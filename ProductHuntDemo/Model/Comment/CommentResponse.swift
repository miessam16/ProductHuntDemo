//
//  CommentResponse.swift
//  ProductHuntDemo
//
//  Created by Ahmed Hesham on 6/28/19.
//  Copyright © 2019 Ahmed Hesham. All rights reserved.
//

import Foundation
import ObjectMapper


class CommentResponse : NSObject, NSCoding, Mappable{
    
    var comments : [Comment]?
    
    
    class func newInstance(map: Map) -> Mappable?{
        return CommentResponse()
    }
    required init?(map: Map){}
    private override init(){}
    
    func mapping(map: Map)
    {
        comments <- map["comments"]
        
    }
    
    /**
     * NSCoding required initializer.
     * Fills the data from the passed decoder
     */
    @objc required init(coder aDecoder: NSCoder)
    {
        comments = aDecoder.decodeObject(forKey: "comments") as? [Comment]
        
    }
    
    /**
     * NSCoding required method.
     * Encodes mode properties into the decoder
     */
    @objc func encode(with aCoder: NSCoder)
    {
        if comments != nil{
            aCoder.encode(comments, forKey: "comments")
        }
        
    }
    
}
