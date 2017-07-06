//
//  ViewController.swift
//  testURLscheme
//
//  Created by 陈德豪 on 2017/7/4.
//  Copyright © 2017年 陈德豪. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    @IBOutlet weak var zsBtn: UIButton!
    @IBOutlet weak var pfBtn: UIButton!
    @IBOutlet weak var jsBtn: UIButton!
    @IBOutlet weak var gsBtn: UIButton!
    @IBOutlet weak var alBtn: UIButton!
    
    @IBOutlet weak var xsBtn: UIButton!
    @IBOutlet weak var QQBtn: UIButton!
    @IBOutlet weak var weChatBtn: UIButton!
    
    @IBOutlet weak var openPhone: UIButton!
    @IBOutlet weak var sendMsgBtn: UIButton!
    @IBOutlet weak var safariBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        // 监测是否安装了以下应用
        
//        BOOL hadInstalledWeixin = [[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"weixin://"]];
//        BOOL hadInstalledQQ = [[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"mqq://"]];
//        BOOL hadInstalledWeibo = [[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"weibo://"]];
        weChatBtn.isEnabled = UIApplication.shared.canOpenURL(URL.init(string: "weixin://")! as URL)
        QQBtn.isEnabled = UIApplication.shared.canOpenURL(URL.init(string: "mqq://")! as URL)
        xsBtn.isEnabled = UIApplication.shared.canOpenURL(URL.init(string: "sinaweibo://")! as URL)
        jsBtn.isEnabled = UIApplication.shared.canOpenURL(URL.init(string: "wx2654d9155d70a468://")! as URL)
        gsBtn.isEnabled = UIApplication.shared.canOpenURL(URL.init(string: "com.icbc.iphoneclient://com.icbc.iphoneclient")!)
        pfBtn.isEnabled = UIApplication.shared.canOpenURL(URL.init(string: "wx1cb534bb13ba3dbd://")! )
        zsBtn.isEnabled = UIApplication.shared.canOpenURL(URL.init(string: "cmbmobilebank://")!)
        alBtn.isEnabled = UIApplication.shared.canOpenURL(URL.init(string: "alipay://")!)
        openPhone.isEnabled = UIApplication.shared.canOpenURL(URL.init(string: "tel://10086")!)
        sendMsgBtn.isEnabled = UIApplication.shared.canOpenURL(URL.init(string: "sms://10086")!)
        safariBtn.isEnabled = UIApplication.shared.canOpenURL(URL.init(string: "http://www.520it.com")!)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

extension ViewController {
    // 建设银行
    @IBAction func wx(_ sender: UIButton) {
        //wx2654d9155d70a468://
        UIApplication.shared.open(NSURL.init(string: "wx2654d9155d70a468://")! as URL, options: ["name": "123"]) { (flag) in
            
            print("flage:\(flag)")
        }
    }
    // 工商银行
    @IBAction func gs(_ sender: UIButton) {
        // com.icbc.iphoneclient://
        UIApplication.shared.open(NSURL.init(string: "com.icbc.iphoneclient://")! as URL, options: ["name": "123"]) { (flag) in
            print("flage:\(flag)")
        }

    }
    // 浦发银行
    @IBAction func pf(_ sender: UIButton) {
         //wx1cb534bb13ba3dbd://
        UIApplication.shared.open(NSURL.init(string: "wx1cb534bb13ba3dbd://")! as URL, options: ["name": "123"]) { (flag) in
            print("flage:\(flag)")
        }

    }
    // 招商银行
    @IBAction func zs(_ sender: UIButton) {
        // cmbmobilebank://
        UIApplication.shared.open(NSURL.init(string: "cmbmobilebank://")! as URL, options: ["name": "123"]) { (flag) in
            print("flage:\(flag)")
        }

    }
    //  支付宝
    @IBAction func al(_ sender: UIButton) {
        // alipay://
        UIApplication.shared.open(NSURL.init(string: "alipay://")! as URL, options: ["name": "123"]) { (flag) in
            print("flage:\(flag)")
        }

    }
}



