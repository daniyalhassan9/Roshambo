//
//  ViewController.swift
//  RoshamboFinal
//
//  Created by Danyal Hassan on 4/15/20.
//  Copyright © 2020 Danyal Hassan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func playPaper(_ sender: Any)
    {
        let controller = RecordsViewController()
        controller.userChoice = "paper"
        print(controller.userChoice)
        performSegue(withIdentifier: "RecordsViewController", sender: sender)
    }
    
}

