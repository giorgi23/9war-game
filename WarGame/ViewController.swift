//
//  ViewController.swift
//  WarGame
//
//  Created by Giorgi Jashiashvili on 3/18/20.
//  Copyright © 2020 Giorgi Jashiashvili. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func dealTapped(_ sender: Any) {
        
       let ran1 = Int.random(in: 2...14)
       let ran2 = Int.random(in: 2...14)
        
        
        leftImageView.image = UIImage(named: "card\(ran1)")
        rightImageView.image = UIImage(named: "card\(ran2)")
        
        if ran1 > ran2 {
            
            leftScore += 1
        
            leftScoreLabel.text = String(leftScore)
        }
        
        else if ran1 < ran2 {
            
            rightScore += 1
            
            rightScoreLabel.text = String(rightScore)
            
        }
        
        if leftScore == 10 {
            
            let alert = UIAlertController(title: "You won!", message: "You got a score of 10 points. Awesome!", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "OK, start new game", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            startingOver()
        }
        
        if rightScore == 10 {
            
            let alert = UIAlertController(title: "Computer won!", message: "Get 10 points first to win!", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "OK, start new game", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            startingOver()
            
        }
        
    }
    
    @IBAction func restart(_ sender: UIButton) {
        startingOver()
    }
    
    func startingOver () {
       
        leftScore = 0
        rightScore = 0
        leftScoreLabel.text = String(leftScore)
        rightScoreLabel.text = String(rightScore)
        
    }
    

}

