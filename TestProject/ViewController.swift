//
//  ViewController.swift
//  TestProject
//
//  Created by Admin on 1/25/17.
//  Copyright © 2017 Downing Development. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var answerChoicesView:DDAnswerChoicesView!
    var topView:TopView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }
    
    func setup() {
        
        setupAnswerChoicesView()
        presentAnswerChoicesView()
        
        setupTopView()
        presentTopView()
 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

//MARK: TopView
extension ViewController {
    
    func setupTopView() {
        
        topView = Bundle.main.loadNibNamed("TopView", owner:self, options: [:])?[0] as! TopView
        topView.center = CGPoint(x: UIScreen.main.bounds.midX, y: UIScreen.main.bounds.midY)
    }
    
    func presentTopView() {
        
        view.addSubview(topView)
    }
    
    func removeTopView() {
        
        topView.removeFromSuperview()
    }
}

//MARK: AnswerChoicesView
extension ViewController {
    
    func setupAnswerChoicesView() {
        
        answerChoicesView = Bundle.main.loadNibNamed("DDAnswerChoicesView", owner: self, options: [:])?[0] as! DDAnswerChoicesView
        answerChoicesView.center = CGPoint(x: UIScreen.main.bounds.midX, y: UIScreen.main.bounds.midY)
        answerChoicesView.backgroundColor = UIColor.red
        
        let choiceOneGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(choiceOneButtonPressesd))
        
        answerChoicesView.choiceOneButton.isUserInteractionEnabled = true
        answerChoicesView.choiceOneButton.addGestureRecognizer(choiceOneGestureRecognizer)
        
        let choiceTwoGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(choiceTwoButtonPressed))
        
        answerChoicesView.choiceTwoButton.isUserInteractionEnabled = true
        answerChoicesView.choiceTwoButton.addGestureRecognizer(choiceTwoGestureRecognizer)
        
        let choiceThreeGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(choiceThreeButtonPressed))
        
        answerChoicesView.choiceThreeButton.isUserInteractionEnabled = true
        answerChoicesView.choiceThreeButton.addGestureRecognizer(choiceThreeGestureRecognizer)
        
        let choiceFourGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(choiceFourButtonPressed))
        
        answerChoicesView.choiceFourButton.isUserInteractionEnabled = true
        answerChoicesView.choiceFourButton.addGestureRecognizer(choiceFourGestureRecognizer)
    }
    
    func presentAnswerChoicesView() {
        
        view.addSubview(answerChoicesView)
    }
    
    func removeAnswerChoicesView() {
        
        answerChoicesView.removeFromSuperview()
    }
    
    func choiceOneButtonPressesd() {
        
        print("Choice 1 Button Pressed")
    }
    
    func choiceTwoButtonPressed() {
        
        print("choice 2 button pressed")
    }
    
    func choiceThreeButtonPressed() {
        
        print("choice 3 button pressed")
    }
    
    func choiceFourButtonPressed() {
        
        print("choice 4 button pressed")
    }
    
    
}
