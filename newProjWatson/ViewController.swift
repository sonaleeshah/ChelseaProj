//
//  ViewController.swift
//  newProjWatson
//
//  Created by Sonalee Shah on 2016-06-11.
//  Copyright © 2016 Alexathon. All rights reserved.
//

import UIKit
import UIKit
import ToneAnalyzerV3
import AVFoundation
import Foundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let username = "d26649dc-b76e-43a3-ad66-15826fb7d1ec"
        let password = "aqzUPwLmrplu"
        let versionDate = "2016-06-11" // use today's date for the most recent version
        let service = ToneAnalyzer(username: username, password: password, version: versionDate)
        
        let failure = { (error: NSError) in print(error) }
        service.getTone("Text that you want to get the tone of", failure: failure) { responseTone in
            print(responseTone.documentTone)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

