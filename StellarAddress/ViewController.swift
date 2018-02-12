//
//  ViewController.swift
//  StellarAddress
//
//  Created by Laptop on 2/12/18.
//  Copyright © 2018 Armonia. All rights reserved.
//

import Cocoa
import StellarSDK

class ViewController: NSViewController {

    @IBOutlet weak var textPublic: NSTextField!
    @IBOutlet weak var textSecret: NSTextField!
    
    @IBAction func onGenerate(_ sender: Any) {
        let act = StellarSDK.Account.random()
        textPublic.stringValue = act.publicKey
        textSecret.stringValue = act.secretKey
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        onGenerate(self)
    }
}
