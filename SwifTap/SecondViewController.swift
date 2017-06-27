//
//  SecondViewController.swift
//  SwifTap
//
//  Created by Josh Reno on 6/26/17.
//  Copyright © 2017 Joshua Reno. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var start: UIButton!
    @IBOutlet weak var player1score: UILabel!
    @IBOutlet weak var player2score: UILabel!
    @IBOutlet weak var player3score: UILabel!
    @IBOutlet weak var player4score: UILabel!
    
    var isGameStarted = false
    var playerOneCount = 0
    var playerTwoCount = 0
    var playerThreeCount = 0
    var playerFourCount = 0
    
    var colorPlayer1 = UIColor(red: .random(), green: .random(), blue: .random(), alpha: 1.0)
    var colorPlayer2 = UIColor(red: .random(), green: .random(), blue: .random(), alpha: 1.0)
    var colorPlayer3 = UIColor(red: .random(), green: .random(), blue: .random(), alpha: 1.0)
    var colorPlayer4 = UIColor(red: .random(), green: .random(), blue: .random(), alpha: 1.0)
    
    @IBAction func tapPlayer1(_ sender: Any) {
        if isGameStarted {
            button1.backgroundColor = colorPlayer1
            playerOneCount += 1
            updateColorPlayer1()
            updateUI()
        }
    }
    @IBAction func tapPlayer2(_ sender: Any) {
        if isGameStarted {
            button2.backgroundColor = colorPlayer1
            playerTwoCount += 1
            updateColorPlayer2()
            updateUI()
        }
    }
    @IBAction func tapPlayer3(_ sender: Any) {
        if isGameStarted {
            button3.backgroundColor = colorPlayer1
            playerThreeCount += 1
            updateColorPlayer3()
            updateUI()
        }
    }
    @IBAction func tapPlayer4(_ sender: Any) {
        if isGameStarted {
            button4.backgroundColor = colorPlayer1
            playerFourCount += 1
            updateColorPlayer4()
            updateUI()
        }
    }
    
    func updateColorPlayer1() {
        colorPlayer1 = UIColor(red: .random(), green: .random(), blue: .random(), alpha: 1.0)
        button1.backgroundColor = colorPlayer1
    }
    func updateColorPlayer2() {
        colorPlayer2 = UIColor(red: .random(), green: .random(), blue: .random(), alpha: 1.0)
        button2.backgroundColor = colorPlayer2
    }
    func updateColorPlayer3() {
        colorPlayer3 = UIColor(red: .random(), green: .random(), blue: .random(), alpha: 1.0)
        button3.backgroundColor = colorPlayer3
    }
    func updateColorPlayer4() {
        colorPlayer4 = UIColor(red: .random(), green: .random(), blue: .random(), alpha: 1.0)
        button4.backgroundColor = colorPlayer4
    }
    
    func updateUI() {
        if isGameStarted {
            player1score.text = "\(playerOneCount)"
            player2score.text = "\(playerTwoCount)"
            player3score.text = "\(playerThreeCount)"
            player4score.text = "\(playerFourCount)"
        }
    }
    
    @IBAction func start(_ sender: Any) {
        start.isHidden = true
        button1.setTitle("", for: .normal)
        button2.setTitle("", for: .normal)
        button3.setTitle("", for: .normal)
        button4.setTitle("", for: .normal)
        playerOneCount = 0
        playerTwoCount = 0
        playerThreeCount = 0
        playerFourCount = 0
        updateUI()
        
        isGameStarted = true
        let _ = Timer.scheduledTimer(withTimeInterval: 10, repeats: false) { (_) in
            // stop
            self.isGameStart = false
        }
    }
    


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
