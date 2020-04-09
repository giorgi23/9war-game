//
//  ViewController.swift
//  WarGame
//
//  Created by Giorgi Jashiashvili on 3/18/20.
//  Copyright © 2020 Giorgi Jashiashvili. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let brain = Brain()
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
//    var leftScore = 0
//    var rightScore = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        brain.getCards()
        leftImageView.image = UIImage(named: "card\(brain.leftCardNumber)")
        rightImageView.image = UIImage(named: "card\(brain.rightCardNumber)")

    }
    
    @IBAction func dealTapped(_ sender: Any) {
        
        brain.getCards()
        
        
        leftImageView.image = UIImage(named: "card\(brain.leftCardNumber)")
        rightImageView.image = UIImage(named: "card\(brain.rightCardNumber)")
        
        print(brain.leftCardNumber)
        print(brain.rightCardNumber)

        brain.getScores()
        updateScores()
        
        
        if brain.playerScore == 10 {

            let alert = UIAlertController(title: "You won!", message: "You got a score of 10 points. Awesome!", preferredStyle: .alert)

            alert.addAction(UIAlertAction(title: "OK, start new game", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            brain.startingOver()
            updateScores()
        }

        if brain.CPUScore == 10 {

            let alert = UIAlertController(title: "Computer won!", message: "Get 10 points first to win!", preferredStyle: .alert)

            alert.addAction(UIAlertAction(title: "OK, start new game", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            brain.startingOver()
            updateScores()

        }
        
    }
    
    @IBAction func restart(_ sender: UIButton) {
        brain.startingOver()
        updateScores()
    }
    
    
    
    
    func updateScores() {
        leftScoreLabel.text = String(brain.playerScore)
        rightScoreLabel.text = String(brain.CPUScore)
    }
    

    

}

