//
//  RecordsViewController.swift
//  RoshamboFinal
//
//  Created by Danyal Hassan on 4/15/20.
//  Copyright © 2020 Danyal Hassan. All rights reserved.
//
import UIKit

class RecordsViewController: UIViewController {
    
    
    
    @IBOutlet weak var result: UILabel!
    var userChoice: String?
    @IBOutlet weak var imageRock: UIImageView!
    
    
    
    

    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        print("Printing from Records View Controller ", userChoice)
        
        if userChoice != "scissors" || userChoice != "Paper"
        {
        rock()
        }
        else{
            //print(userChoice)
        }

        // Do any additional setup after loading the view.
    }
    func opponenetMove() -> String {
           let number = Int.random(in: 1 ..< 4)
           print(number)
           print(userChoice)
           
           switch number {
           case 1:
               return "rock"
           case 2:
               return "paper"
           case 3:
               return "scissors"
           default:
               return "invalid"
           }
       }
    
    func rock() {
        let oppMove = opponenetMove()
        
        switch oppMove {
        case "paper":
            result.text = ("paper beats rock")
            imageRock.image = UIImage(named: "PaperCoversRock")
        case "rock":
            result.text = ("tie")
             imageRock.image = UIImage(named: "itsATie")
        case "scissors":
            result.text = ("rock beats scissor")
             imageRock.image = UIImage(named: "RockCrushesScissors")
        default:
            print("invalid value")
        }
    }
    
    

    /*
    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
