//
//  ViewController.swift
//  Magic 8 ball
//
//  Created by Chen Jonathan on 3/7/16.
//  Copyright © 2016 Chen Yi Tai. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var QuestionField: UITextField!
    
    @IBOutlet weak var CircleView: UIImageView!
    
    @IBOutlet weak var ShakeButton: UIButton!
    
    @IBOutlet weak var ResponseLabel: UILabel!
    
    @IBAction func shakeButtonPressed()
    {
        let myModel = EnightBallModel()
        
        var response : String
        
        response = myModel.getResponse()
        
        ResponseLabel.text = response
        
    }
    
    func textFieldShouldReturn(textfield : UITextField)->Bool
    {
       
        textfield.resignFirstResponder()
        QuestionField.becomeFirstResponder()
        
        let myModel = EnightBallModel()
        
        var response: String
        response = myModel.getResponse()
        ResponseLabel.text = response
        
        return true
    }

    
    //@IBAction func
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("Chen Yi Tai")
        let myage : Double = 20
        print(String(format: "%.2f", myage))
        let myname : String = "Chen Yi Tai"
        print(myname)
        
        //QuestionField.returnKeyType = UIReturnKeyType.Go
        
        let myModel = EnightBallModel(extraResponseArray: ["Hello"])
        
        myModel.askquestion("Will I get full mark of this lab")
        myModel.askquestion("Will the Cronulla sharks receive a premiership this year")
        myModel.askquestion("Will I end up becoming a cat person when I get old")
        
        myModel.printable()
        
        myModel.debugPrint()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

