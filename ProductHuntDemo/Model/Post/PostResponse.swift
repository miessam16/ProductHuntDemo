//
//    PostResponse.swift
//    

import Foundation
import ObjectMapper


class PostResponse : NSObject, NSCoding, Mappable{
    
    var posts : [Post]?
    
    
    class func newInstance(map: Map) -> Mappable?{
        return PostResponse()
    }
    required init?(map: Map){}
    private override init(){}
    
    func mapping(map: Map)
    {
        posts <- map["posts"]
        
    }
    
    /**
     * NSCoding required initializer.
     * Fills the data from the passed decoder
     */
    @objc required init(coder aDecoder: NSCoder)
    {
        posts = aDecoder.decodeObject(forKey: "posts") as? [Post]
        
    }
    
    /**
     * NSCoding required method.
     * Encodes mode properties into the decoder
     */
    @objc func encode(with aCoder: NSCoder)
    {
        if posts != nil{
            aCoder.encode(posts, forKey: "posts")
        }
        
    }
    
}
