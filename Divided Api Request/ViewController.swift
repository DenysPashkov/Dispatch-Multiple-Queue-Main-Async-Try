//
//  ViewController.swift
//  Divided Api Request
//
//  Created by denys on 10/01/2020.
//  Copyright © 2020 denys. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var text: UILabel!
    var jsonResoult : Json4Swift_Base?

    override func viewDidLoad() {
//        Structure with completion
        apiRequest(strin: "peppe", completion: { jsonString in
        DispatchQueue.main.async {
            self.jsonResoult = jsonString
//			in this case a simple Text for show the resoult but it can be used as pleesed
            self.text.text = "\(self.jsonResoult)"
        }
        })
        
    }


}

