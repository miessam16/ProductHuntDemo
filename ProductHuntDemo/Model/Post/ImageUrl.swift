//
//    ImageUrl.swift
//
import Foundation
import ObjectMapper


class ImageUrl : NSObject, NSCoding, Mappable{
    
 
    var original : String?
    
    
    class func newInstance(map: Map) -> Mappable?{
        return ImageUrl()
    }
    required init?(map: Map){}
    private override init(){}
    
    func mapping(map: Map)
    {
 
        original <- map["original"]
        
    }
    
    /**
     * NSCoding required initializer.
     * Fills the data from the passed decoder
     */
    @objc required init(coder aDecoder: NSCoder)
    {
        
        original = aDecoder.decodeObject(forKey: "original") as? String
        
    }
    
    /**
     * NSCoding required method.
     * Encodes mode properties into the decoder
     */
    @objc func encode(with aCoder: NSCoder)
    {
        if original != nil{
            aCoder.encode(original, forKey: "original")
        }
        
    }
    
}
