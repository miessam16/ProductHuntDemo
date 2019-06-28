//
//    Maker.swift
//     
import Foundation
import ObjectMapper


class Maker : NSObject, NSCoding, Mappable{
    
    var createdAt : String?
    var headline : AnyObject?
    var id : Int?
    var imageUrl : ImageUrl?
    var name : String?
    var profileUrl : String?
    var twitterUsername : AnyObject?
    var username : String?
    var websiteUrl : AnyObject?
    
    
    class func newInstance(map: Map) -> Mappable?{
        return Maker()
    }
    required init?(map: Map){}
    private override init(){}
    
    func mapping(map: Map)
    {
        createdAt <- map["created_at"]
        headline <- map["headline"]
        id <- map["id"]
        imageUrl <- map["image_url"]
        name <- map["name"]
        profileUrl <- map["profile_url"]
        twitterUsername <- map["twitter_username"]
        username <- map["username"]
        websiteUrl <- map["website_url"]
        
    }
    
    /**
     * NSCoding required initializer.
     * Fills the data from the passed decoder
     */
    @objc required init(coder aDecoder: NSCoder)
    {
        createdAt = aDecoder.decodeObject(forKey: "created_at") as? String
        headline = aDecoder.decodeObject(forKey: "headline") as? AnyObject
        id = aDecoder.decodeObject(forKey: "id") as? Int
        imageUrl = aDecoder.decodeObject(forKey: "image_url") as? ImageUrl
        name = aDecoder.decodeObject(forKey: "name") as? String
        profileUrl = aDecoder.decodeObject(forKey: "profile_url") as? String
        twitterUsername = aDecoder.decodeObject(forKey: "twitter_username") as? AnyObject
        username = aDecoder.decodeObject(forKey: "username") as? String
        websiteUrl = aDecoder.decodeObject(forKey: "website_url") as? AnyObject
        
    }
    
    /**
     * NSCoding required method.
     * Encodes mode properties into the decoder
     */
    @objc func encode(with aCoder: NSCoder)
    {
        if createdAt != nil{
            aCoder.encode(createdAt, forKey: "created_at")
        }
        if headline != nil{
            aCoder.encode(headline, forKey: "headline")
        }
        if id != nil{
            aCoder.encode(id, forKey: "id")
        }
        if imageUrl != nil{
            aCoder.encode(imageUrl, forKey: "image_url")
        }
        if name != nil{
            aCoder.encode(name, forKey: "name")
        }
        if profileUrl != nil{
            aCoder.encode(profileUrl, forKey: "profile_url")
        }
        if twitterUsername != nil{
            aCoder.encode(twitterUsername, forKey: "twitter_username")
        }
        if username != nil{
            aCoder.encode(username, forKey: "username")
        }
        if websiteUrl != nil{
            aCoder.encode(websiteUrl, forKey: "website_url")
        }
        
    }
    
}
