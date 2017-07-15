//
//  ViewController.swift
//  Magic 8Ball
//
//  Created by Sachin Gupta on 7/14/17.
//  Copyright © 2017 Amar Gupta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber : Int = 0
    
    @IBOutlet weak var imageView: UIImageView!
    @IBAction func askButtonPressed(_ sender: UIButton) {
        func newBallImage() {
            randomBallNumber = Int(arc4random_uniform(5))
            imageView.image = UIImage(named: ballArray[randomBallNumber])
        }
        newBallImage()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        randomBallNumber    = Int(arc4random_uniform(5))
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        func newBallImage() {
            randomBallNumber = Int(arc4random_uniform(5))
            imageView.image = UIImage(named: ballArray[randomBallNumber])
        }        
        newBallImage()
        
    }

}

