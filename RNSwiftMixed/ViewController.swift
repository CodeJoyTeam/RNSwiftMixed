//
//  ViewController.swift
//  RNSwiftMixed
//
//  Created by Fang on 2017/1/20.
//  Copyright © 2017年 yfdyf. All rights reserved.
//

import UIKit
import React

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let jsCodeLocation:URL = URL.init(string: "http://localhost:8081/index.ios.bundle?platform=ios")!
        

        let rootView:RCTRootView = RCTRootView.init(bundleURL: jsCodeLocation, moduleName: "RNSwiftMixed", initialProperties: ["scores":[["name":"Alex","value":"42"],["name":"Joel","value":"10"]]], launchOptions: nil)
        self.view = rootView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

