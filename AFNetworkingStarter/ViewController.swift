//
//  ViewController.swift
//  AFNetworkingStarter
//
//  Created by Michael Litman on 12/17/15.
//  Copyright © 2015 thinkful. All rights reserved.
//

import UIKit
import AFNetworking


class ViewController: UIViewController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
        let manager = AFHTTPSessionManager()
        manager.GET("https://api.instagram.com/v1/tags/clararockmore/media/recent?client_id=c4fc61c4704949baab8825cf178e13fe", parameters: nil, progress: { (progress: NSProgress) -> Void in
            
            }, success: { (task: NSURLSessionDataTask, responseObject: AnyObject?) -> Void in
                print("JSON: " + responseObject!.description)
            }) { (task: NSURLSessionDataTask?, error: NSError) -> Void in
                print("Error: " + error.localizedDescription)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

