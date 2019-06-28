//
//    Topic.swift
//     

import Foundation
import ObjectMapper


class Topic : NSObject, NSCoding, Mappable{
    
    var id : Int?
    var name : String?
    var slug : String?
    
    
    class func newInstance(map: Map) -> Mappable?{
        return Topic()
    }
    required init?(map: Map){}
    private override init(){}
    
    func mapping(map: Map)
    {
        id <- map["id"]
        name <- map["name"]
        slug <- map["slug"]
        
    }
    
    /**
     * NSCoding required initializer.
     * Fills the data from the passed decoder
     */
    @objc required init(coder aDecoder: NSCoder)
    {
        id = aDecoder.decodeObject(forKey: "id") as? Int
        name = aDecoder.decodeObject(forKey: "name") as? String
        slug = aDecoder.decodeObject(forKey: "slug") as? String
        
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
        if name != nil{
            aCoder.encode(name, forKey: "name")
        }
        if slug != nil{
            aCoder.encode(slug, forKey: "slug")
        }
        
    }
    
}
