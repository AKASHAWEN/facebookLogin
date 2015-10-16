//
//  ViewController.swift
//  RandUser
//
//  Created by Yuchao Chen on 15/10/15.
//  Copyright © 2015年 Yuchao Chen. All rights reserved.
//

import UIKit
import Parse
import ParseFacebookUtilsV4
import FBSDKCoreKit
import FBSDKLoginKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let permissions = ["public_profile"]
        
        PFFacebookUtils.logInInBackgroundWithReadPermissions(permissions)  {
            
            (user: PFUser?, error: NSError?) -> Void in
            
            print("here")
            if let error = error {
                print(error)
            }
            else {
                if let user = user {
                    print(user)
                }
            }
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

