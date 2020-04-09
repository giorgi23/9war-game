//
//  SecondVC.swift
//  WarGame
//
//  Created by Giorgi Jashiashvili on 4/9/20.
//  Copyright © 2020 Giorgi Jashiashvili. All rights reserved.
//

import UIKit

class Brain: UIViewController {
    
    var leftCardNumber = 0
    var rightCardNumber = 0
    var playerScore = 0
    var CPUScore = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    func getCards() {
        
        leftCardNumber = Int.random(in: 2...14)
        rightCardNumber = Int.random(in: 2...14)
        
    }
    
    func getScores () {
        
        if leftCardNumber > rightCardNumber {
            
            playerScore += 1
            print("Player score is \(playerScore)")
            print("CPUscore is \(CPUScore)")
        }
        
        else if leftCardNumber < rightCardNumber {
            CPUScore += 1
            print("Player score is \(playerScore)")
            print("CPUscore is \(CPUScore)")
                        
        }
        
    }
    
    func startingOver () {
       
        playerScore = 0
        CPUScore = 0
        
    }
    

}
