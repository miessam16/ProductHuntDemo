//
//    ScreenshotUrl.swift
//     

import Foundation
import ObjectMapper


class ScreenshotUrl : NSObject, NSCoding, Mappable{
    
    var threeHunderdpx : String?
    var eightFiftypx : String?
    
    
    class func newInstance(map: Map) -> Mappable?{
        return ScreenshotUrl()
    }
    required init?(map: Map){}
    private override init(){}
    
    func mapping(map: Map)
    {
        threeHunderdpx <- map["300px"]
        eightFiftypx <- map["850px"]
        
    }
    
    /**
     * NSCoding required initializer.
     * Fills the data from the passed decoder
     */
    @objc required init(coder aDecoder: NSCoder)
    {
        threeHunderdpx = aDecoder.decodeObject(forKey: "threeHunderdpx") as? String
        eightFiftypx = aDecoder.decodeObject(forKey: "eightFiftypx") as? String
        
    }
    
    /**
     * NSCoding required method.
     * Encodes mode properties into the decoder
     */
    @objc func encode(with aCoder: NSCoder)
    {
        if threeHunderdpx != nil{
            aCoder.encode(threeHunderdpx, forKey: "threeHunderdpx")
        }
        if eightFiftypx != nil{
            aCoder.encode(eightFiftypx, forKey: "eightFiftypx")
        }
        
    }
    
}
