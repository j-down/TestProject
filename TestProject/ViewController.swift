//
//  ViewController.swift
//  TestProject
//
//  Created by Admin on 1/25/17.
//  Copyright © 2017 Downing Development. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var answerChoicesView: DDAnswerChoicesView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }
    
    func setup() {
        
        setupAnswerChoicesView()
        presentAnswerChoicesView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setupAnswerChoicesView() {
        
        answerChoicesView = Bundle.main.loadNibNamed("DDAnswerChoicesView", owner: self, options: [:])?[0] as! DDAnswerChoicesView
        answerChoicesView.center = CGPoint(x: UIScreen.main.bounds.midX, y: UIScreen.main.bounds.midY)
        answerChoicesView.backgroundColor = UIColor.red
        
        let choice1GestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(choice1ButtonPressesd))
        
        answerChoicesView.choice1Button.isUserInteractionEnabled = true
        answerChoicesView.choice1Button.addGestureRecognizer(choice1GestureRecognizer)
        
    }
    
    func presentAnswerChoicesView() {
        
        view.addSubview(answerChoicesView)
    }
    
    func removeAnswerChoicesView() {
        
        answerChoicesView.removeFromSuperview()
    }
    
    func choice1ButtonPressesd() {
        
        print("Choice 1 Button Pressed")
    }

}

