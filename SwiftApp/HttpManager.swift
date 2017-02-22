
//
//  HttpManager.swift
//  SwiftApp
//
//  Created by daiqile on 2016/12/29.
//  Copyright © 2016年 com.daiqile.daiqile. All rights reserved.
//

import UIKit
import AFNetworking

enum RequestType {
    case GET,POST
}

typealias Success = ((_ responseData:  Any?) -> Swift.Void?)
typealias Fail = ((_ error:  Any?) -> Swift.Void?)

//typealias task = ((URLSessionDataTask, Any?) -> Swift.Void)?

class HttpManager: AFHTTPSessionManager {
    
    
    
    static let shareManager : HttpManager = {
        
        let instance = HttpManager()
        let request = AFHTTPRequestSerializer()
        request.timeoutInterval = 15
        instance.requestSerializer = request
        instance.responseSerializer = AFHTTPResponseSerializer()
        return instance
        
    }()
    
    
    func sendHttpRequest(requestType : RequestType,urlString : String,params:Any?,successBlock:@escaping (Any?) -> (Void),errorBlock:@escaping (Any?) -> (Void)) -> Void {
        
        if requestType == .GET {
            
            get(urlString, parameters: params, progress: nil, success: { (dataTask, responseData) in
                
                successBlock(responseData)
                
            }, failure: { (dataTask, error) in
                
                errorBlock(error)
                
            })
        }
        
        if requestType == .POST {
            
            post(urlString, parameters: params, progress: nil, success: { (dataTask, responseData) in
                
                successBlock(responseData)
                
            }, failure: { (dataTask, error) in
                
                errorBlock(error)
                
            })
            
        }
        
        
    }
    
    

}
