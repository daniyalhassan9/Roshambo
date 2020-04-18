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
    var s: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func playPaper(_ sender: UIButton)
    {
        let controller = RecordsViewController()
        s = sender.title(for: UIControl.State())!
        //print(controller.userChoice)
        performSegue(withIdentifier: "play", sender: sender)
    }
    
    
    @IBAction func playScissor(_ sender: UIButton) {
        
        let controller = RecordsViewController()
        s = sender.title(for: UIControl.State())!
        //print(controller.userChoice)
        performSegue(withIdentifier: "play", sender: sender)
    }
    
    @IBAction func playRock(_ sender: UIButton)
    {
        let controller = RecordsViewController()
        s = sender.title(for: UIControl.State())!
        //print(controller.userChoice)
        performSegue(withIdentifier: "play", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "play" {
            let controller = segue.destination as! RecordsViewController

            controller.userChoice = s
        }
    }
}
