//
//  ViewController.swift
//  RoshamboFinal
//
//  Created by Danyal Hassan on 4/15/20.
//  Copyright © 2020 Danyal Hassan. All rights reserved.
//
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scissor: UIButton!
    @IBOutlet weak var paper: UIButton!
    @IBOutlet weak var rock: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func playPaper(_ sender: UIButton)
    {
        let controller = RecordsViewController()
        controller.userChoice = "sender.title(for: UIControl.State())!"
        //print(controller.userChoice)
        performSegue(withIdentifier: "RecordsViewController", sender: sender)
    }
    
    
    @IBAction func playScissor(_ sender: UIButton) {
        
        let controller = RecordsViewController()
        controller.userChoice = "sender.title(for: UIControl.State())!"
        //print(controller.userChoice)
        performSegue(withIdentifier: "RecordsViewController", sender: sender)
    }
    
    @IBAction func playRock(_ sender: UIButton)
    {
        let controller = RecordsViewController()
        controller.userChoice = "sender.title(for: UIControl.State())!"
        //print(controller.userChoice)
        performSegue(withIdentifier: "RecordsViewController", sender: sender)
    }
}
