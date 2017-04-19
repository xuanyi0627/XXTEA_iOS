//
//  ViewController.swift
//  XXTEA_Swift
//
//  Created by Xuanyi Liu on 2017/4/19.
//  Copyright © 2017年 Xuanyi Liu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let text = "Hello World! 你好，中国！"
        let key = "1234567890"
        let encrypt_data = XXTEA.encryptString(toBase64String: text, stringKey: key)!
        let decrypt_data = XXTEA.decryptBase64String(to: encrypt_data, stringKey: key)!
        print("encrypt_data: \(encrypt_data)  ----   decrypt_data: \(decrypt_data)")
        if text == decrypt_data {
            print("success")
        } else {
            print("failure")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

