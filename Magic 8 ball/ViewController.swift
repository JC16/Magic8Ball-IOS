//
//  ViewController.swift
//  Magic 8 ball
//
//  Created by Chen Jonathan on 3/7/16.
//  Copyright © 2016 Chen Yi Tai. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var QuestionField: UITextField!
    
    @IBOutlet weak var CircleView: UIImageView!
    
    @IBOutlet weak var ShakeButton: UIButton!
    
    @IBOutlet weak var ResponseLabel: UILabel!
    
    
    func changelabel()
    {
        let myModel = EnightBallModel()
        
        var response : String
        
        response = myModel.getResponse()
        
        changeCircle()
        
        ResponseLabel.text = response
    }
    
    func changeCircle()
    {
        let imgName : [String] = ["circle1","circle2","circle3","circle4","circle5","circle6"]
        
        let randomIndex = Int(arc4random_uniform(UInt32(imgName.count)))
        
        self.CircleView.image = UIImage(named: imgName[randomIndex])
        
    }
    
    @IBAction func shakeButtonPressed()
    {
        
        changelabel()
        
    }
    
    func textFieldShouldReturn(textfield : UITextField)->Bool
    {
       
        textfield.returnKeyType = UIReturnKeyType.Go
        QuestionField.resignFirstResponder()
        
        changelabel()
        
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
        
        self.QuestionField.returnKeyType = UIReturnKeyType.Go
        
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

