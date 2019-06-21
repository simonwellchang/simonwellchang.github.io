//
//  SWTest0.swift
//  Pods
//
//  Created by Mac on 2019/6/21.
//

import UIKit
import Alamofire
import SwiftyJSON

class SWTest0: NSObject {

    public static let sharedInstance = SWTest0()
    public class func requestGETURL(_ strURL: String, headers : [String : String]?, success:@escaping (JSON) -> Void, failure:@escaping (Error) -> Void) {

        Alamofire.request(strURL, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: headers).responseJSON { (responseObject) -> Void in
            if responseObject.result.isSuccess {
                let resJson = JSON(responseObject.result.value!)
                success(resJson)
            }
            if responseObject.result.isFailure {
                let error : Error = responseObject.result.error!
                failure(error)
            }
        }
    }
}
