//
//    Post.swift
//     

import Foundation
import ObjectMapper


class Post : NSObject, NSCoding, Mappable{
    
    var categoryId : AnyObject?
    var commentsCount : Int?
    var createdAt : String?
    var currentUser : CurrentUser?
    var day : String?
    var discussionUrl : String?
    var exclusive : AnyObject?
    var featured : Bool?
    var id : Int?
    var iosFeaturedAt : Bool?
    var makerInside : Bool?
    var makers : [Maker]?
    var name : String?
    var platforms : [AnyObject]?
    var productState : String?
    var redirectUrl : String?
    var screenshotUrl : ScreenshotUrl?
    var slug : String?
    var tagline : String?
    var thumbnail : Thumbnail?
    var topics : [Topic]?
    var user : Maker?
    var votesCount : Int?
    
    
    class func newInstance(map: Map) -> Mappable?{
        return Post()
    }
    required init?(map: Map){}
    private override init(){}
    
    func mapping(map: Map)
    {
        categoryId <- map["category_id"]
        commentsCount <- map["comments_count"]
        createdAt <- map["created_at"]
        currentUser <- map["current_user"]
        day <- map["day"]
        discussionUrl <- map["discussion_url"]
        exclusive <- map["exclusive"]
        featured <- map["featured"]
        id <- map["id"]
        iosFeaturedAt <- map["ios_featured_at"]
        makerInside <- map["maker_inside"]
        makers <- map["makers"]
        name <- map["name"]
        platforms <- map["platforms"]
        productState <- map["product_state"]
        redirectUrl <- map["redirect_url"]
        screenshotUrl <- map["screenshot_url"]
        slug <- map["slug"]
        tagline <- map["tagline"]
        thumbnail <- map["thumbnail"]
        topics <- map["topics"]
        user <- map["user"]
        votesCount <- map["votes_count"]
        
    }
    
    /**
     * NSCoding required initializer.
     * Fills the data from the passed decoder
     */
    @objc required init(coder aDecoder: NSCoder)
    {
        categoryId = aDecoder.decodeObject(forKey: "category_id") as? AnyObject
        commentsCount = aDecoder.decodeObject(forKey: "comments_count") as? Int
        createdAt = aDecoder.decodeObject(forKey: "created_at") as? String
        currentUser = aDecoder.decodeObject(forKey: "current_user") as? CurrentUser
        day = aDecoder.decodeObject(forKey: "day") as? String
        discussionUrl = aDecoder.decodeObject(forKey: "discussion_url") as? String
        exclusive = aDecoder.decodeObject(forKey: "exclusive") as? AnyObject
        featured = aDecoder.decodeObject(forKey: "featured") as? Bool
        id = aDecoder.decodeObject(forKey: "id") as? Int
        iosFeaturedAt = aDecoder.decodeObject(forKey: "ios_featured_at") as? Bool
        makerInside = aDecoder.decodeObject(forKey: "maker_inside") as? Bool
        makers = aDecoder.decodeObject(forKey: "makers") as? [Maker]
        name = aDecoder.decodeObject(forKey: "name") as? String
        platforms = aDecoder.decodeObject(forKey: "platforms") as? [AnyObject]
        productState = aDecoder.decodeObject(forKey: "product_state") as? String
        redirectUrl = aDecoder.decodeObject(forKey: "redirect_url") as? String
        screenshotUrl = aDecoder.decodeObject(forKey: "screenshot_url") as? ScreenshotUrl
        slug = aDecoder.decodeObject(forKey: "slug") as? String
        tagline = aDecoder.decodeObject(forKey: "tagline") as? String
        thumbnail = aDecoder.decodeObject(forKey: "thumbnail") as? Thumbnail
        topics = aDecoder.decodeObject(forKey: "topics") as? [Topic]
        user = aDecoder.decodeObject(forKey: "user") as? Maker
        votesCount = aDecoder.decodeObject(forKey: "votes_count") as? Int
        
    }
    
    /**
     * NSCoding required method.
     * Encodes mode properties into the decoder
     */
    @objc func encode(with aCoder: NSCoder)
    {
        if categoryId != nil{
            aCoder.encode(categoryId, forKey: "category_id")
        }
        if commentsCount != nil{
            aCoder.encode(commentsCount, forKey: "comments_count")
        }
        if createdAt != nil{
            aCoder.encode(createdAt, forKey: "created_at")
        }
        if currentUser != nil{
            aCoder.encode(currentUser, forKey: "current_user")
        }
        if day != nil{
            aCoder.encode(day, forKey: "day")
        }
        if discussionUrl != nil{
            aCoder.encode(discussionUrl, forKey: "discussion_url")
        }
        if exclusive != nil{
            aCoder.encode(exclusive, forKey: "exclusive")
        }
        if featured != nil{
            aCoder.encode(featured, forKey: "featured")
        }
        if id != nil{
            aCoder.encode(id, forKey: "id")
        }
        if iosFeaturedAt != nil{
            aCoder.encode(iosFeaturedAt, forKey: "ios_featured_at")
        }
        if makerInside != nil{
            aCoder.encode(makerInside, forKey: "maker_inside")
        }
        if makers != nil{
            aCoder.encode(makers, forKey: "makers")
        }
        if name != nil{
            aCoder.encode(name, forKey: "name")
        }
        if platforms != nil{
            aCoder.encode(platforms, forKey: "platforms")
        }
        if productState != nil{
            aCoder.encode(productState, forKey: "product_state")
        }
        if redirectUrl != nil{
            aCoder.encode(redirectUrl, forKey: "redirect_url")
        }
        if screenshotUrl != nil{
            aCoder.encode(screenshotUrl, forKey: "screenshot_url")
        }
        if slug != nil{
            aCoder.encode(slug, forKey: "slug")
        }
        if tagline != nil{
            aCoder.encode(tagline, forKey: "tagline")
        }
        if thumbnail != nil{
            aCoder.encode(thumbnail, forKey: "thumbnail")
        }
        if topics != nil{
            aCoder.encode(topics, forKey: "topics")
        }
        if user != nil{
            aCoder.encode(user, forKey: "user")
        }
        if votesCount != nil{
            aCoder.encode(votesCount, forKey: "votes_count")
        }
        
    }
    
}
