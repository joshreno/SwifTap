//
//  ViewController.swift
//  SwifTap
//
//  Created by Josh Reno on 1/21/17.
//  Copyright © 2017 Joshua Reno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // first view
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var start: UIButton!
    @IBOutlet weak var player1Score: UILabel!
    @IBOutlet weak var player2Score: UILabel!  
    
    var isGameStarted = false
    var playerOneTapCount = 0
    var playerTwoTapCount = 0

    var colorPlayer1 = UIColor(red: .random(), green: .random(), blue: .random(), alpha: 1.0)
    var colorPlayer2 = UIColor(red: .random(), green: .random(), blue: .random(), alpha: 1.0)
    
    @IBAction func addPointPlayer1(_ sender: Any) {
        if isGameStarted {
            button1.backgroundColor = colorPlayer1
            playerOneTapCount += 1
            updateColorPlayer1()
            updateUI()
        }
    }
    @IBAction func addPointPlayer2(_ sender: Any) {
        if isGameStarted {
            button2.backgroundColor = colorPlayer1
            playerOneTapCount += 1
            updateColorPlayer1()
            updateUI()
        }
    }
    @IBAction func addPointPlayer3(_ sender: Any) {
        if isGameStarted {
            button3.backgroundColor = colorPlayer2
            playerTwoTapCount += 1
            updateColorPlayer2()
            updateUI()
        }
    }
    @IBAction func addPointPlayer4(_ sender: Any) {
        if isGameStarted {
            button4.backgroundColor = colorPlayer2
            playerTwoTapCount += 1
            updateColorPlayer2()
            updateUI()
        }
    }
    
    @IBAction func start(_ sender: Any) {
        start.isHidden = true
        button1.setTitle("", for: .normal)
        button2.setTitle("", for: .normal)
        button3.setTitle("", for: .normal)
        button4.setTitle("", for: .normal)
        playerOneTapCount = 0
        playerTwoTapCount = 0
        updateUI()
        
        isGameStarted = true
        let _ = Timer.scheduledTimer(withTimeInterval: 10, repeats: false) { (_) in
            // stop
            self.button1.isHidden = true
            self.button4.isHidden = true
            _ = Timer.scheduledTimer(withTimeInterval: 10, repeats: false) { (_) in
                // stop
                self.button1.isHidden = false
                self.button4.isHidden = false
                self.button2.isHidden = true
                self.button3.isHidden = true
                _ = Timer.scheduledTimer(withTimeInterval: 10, repeats: false) { (_) in
                    // stop
                    
                    self.button2.isHidden = false
                    self.button3.isHidden = false
                    
                    self.isGameStarted = false
                    self.start.isHidden = false
                    if self.playerOneTapCount > self.playerTwoTapCount {
                        self.player1Score.text = "Player 1: \(self.playerOneTapCount) Wins!"
                        self.player2Score.text = "Player 2: \(self.playerTwoTapCount) Loses!"
                    } else if self.playerOneTapCount < self.playerTwoTapCount {
                        self.player1Score.text = "Player 1: \(self.playerOneTapCount) Loses!"
                        self.player2Score.text = "Player 2: \(self.playerTwoTapCount) Wins!"
                    } else {
                        self.player1Score.text = "Player 1: \(self.playerOneTapCount)"
                        self.player2Score.text = "Player 2: \(self.playerTwoTapCount)"
                    }
                }
                
            }
            
        }
    }
    

    
    func updateColorPlayer1() {
        colorPlayer1 = UIColor(red: .random(), green: .random(), blue: .random(), alpha: 1.0)
        button1.backgroundColor = colorPlayer1
        button2.backgroundColor = colorPlayer1
    }
    
    func updateColorPlayer2() {
        colorPlayer2 = UIColor(red: .random(), green: .random(), blue: .random(), alpha: 1.0)
        button3.backgroundColor = colorPlayer2
        button4.backgroundColor = colorPlayer2
    }
    

    func updateUI() {
        if isGameStarted {
            player1Score.text = "Player 1: \(playerOneTapCount)"
            player2Score.text = "Player 2: \(playerTwoTapCount)"
        }
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

