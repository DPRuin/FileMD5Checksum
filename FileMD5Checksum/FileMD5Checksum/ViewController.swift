//
//  ViewController.swift
//  FileMD5Checksum
//
//  Created by mac126 on 2018/9/1.
//  Copyright © 2018年 mac126. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        let stringmd5 = FileChecksum.genMD5Checksum("hhhhh")
//        print("\(stringmd5)")
        // housekeeper-1.0
        let zipurl = Bundle.main.url(forResource: "idle", withExtension: "zip")
        let filemd5 = FileChecksum.genMD5Checksum(fromFile: zipurl)
        
        if let filemd5 = filemd5 {
            print("\(filemd5)")
        }
        
    }

    

}

