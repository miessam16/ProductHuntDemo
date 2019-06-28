//
//    CurrentUser.swift
//    

import Foundation
import ObjectMapper


class CurrentUser : NSObject, NSCoding, Mappable{
    
    var commentedOnPost : Bool?
    var votedForPost : Bool?
    
    
    class func newInstance(map: Map) -> Mappable?{
        return CurrentUser()
    }
    required init?(map: Map){}
    private override init(){}
    
    func mapping(map: Map)
    {
        commentedOnPost <- map["commented_on_post"]
        votedForPost <- map["voted_for_post"]
        
    }
    
    /**
     * NSCoding required initializer.
     * Fills the data from the passed decoder
     */
    @objc required init(coder aDecoder: NSCoder)
    {
        commentedOnPost = aDecoder.decodeObject(forKey: "commented_on_post") as? Bool
        votedForPost = aDecoder.decodeObject(forKey: "voted_for_post") as? Bool
        
    }
    
    /**
     * NSCoding required method.
     * Encodes mode properties into the decoder
     */
    @objc func encode(with aCoder: NSCoder)
    {
        if commentedOnPost != nil{
            aCoder.encode(commentedOnPost, forKey: "commented_on_post")
        }
        if votedForPost != nil{
            aCoder.encode(votedForPost, forKey: "voted_for_post")
        }
        
    }
    
}
