//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Veer Gadodia on 7/11/19.
//  Copyright © 2019 Veer Gadodia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ballViewImage: UIImageView!
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        function()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        function()
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        function()
    }
    
    func function(){
        randomIndex = Int.random(in: 0...4)
        ballViewImage.image = UIImage(named: ballArray[randomIndex])
    }
}

