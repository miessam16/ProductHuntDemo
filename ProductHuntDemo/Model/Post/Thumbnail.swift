//
//    Thumbnail.swift
//     

import Foundation
import ObjectMapper


class Thumbnail : NSObject, NSCoding, Mappable{
    
    var id : Int?
    var imageUrl : String?
    var mediaType : String?
   // var metadata : Metadata?
    
    
    class func newInstance(map: Map) -> Mappable?{
        return Thumbnail()
    }
    required init?(map: Map){}
    private override init(){}
    
    func mapping(map: Map)
    {
        id <- map["id"]
        imageUrl <- map["image_url"]
        mediaType <- map["media_type"]
 
    }
    
    /**
     * NSCoding required initializer.
     * Fills the data from the passed decoder
     */
    @objc required init(coder aDecoder: NSCoder)
    {
        id = aDecoder.decodeObject(forKey: "id") as? Int
        imageUrl = aDecoder.decodeObject(forKey: "image_url") as? String
        mediaType = aDecoder.decodeObject(forKey: "media_type") as? String
 
    }
    
    /**
     * NSCoding required method.
     * Encodes mode properties into the decoder
     */
    @objc func encode(with aCoder: NSCoder)
    {
        if id != nil{
            aCoder.encode(id, forKey: "id")
        }
        if imageUrl != nil{
            aCoder.encode(imageUrl, forKey: "image_url")
        }
        if mediaType != nil{
            aCoder.encode(mediaType, forKey: "media_type")
        }
//        if metadata != nil{
//            aCoder.encode(metadata, forKey: "metadata")
//        }
        
    }
    
}
