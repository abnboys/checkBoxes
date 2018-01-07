//
//  ViewController.swift
//  CheckBox
//
//  Created by penumutchu.prasad@gmail.com on 07/01/18.
//  Copyright © 2018 abnboys. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var cb: CheckBox!
    
    
    @IBOutlet var signupbutton: UIButton!
    
    @IBOutlet var check1: UIButton!
    @IBOutlet var check2: UIButton!
    
    /// Images
    
    let checkedImg = UIImage.init(named: "check")!
    let unCheckedImg = UIImage.init(named: "uncheck")!
    
    /// Bool Property for Checking
    
    var isChecked: Bool = false 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        signupbutton.isEnabled = false
        signupbutton.backgroundColor = isChecked ? UIColor.green : UIColor.blue

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onCB(_ sender: Any) {
        
        
    }
    
    @IBAction func onCheck1(_ sender: UIButton) {
        
        
        
            if isChecked {
                
                isChecked = !isChecked
//                sender.setImage(checkedImg, for: .normal)
                signupbutton.backgroundColor = isChecked ? UIColor.green : UIColor.blue

            } else {
                
                isChecked = !isChecked
//                sender.setImage(unCheckedImg, for: .normal)
                signupbutton.backgroundColor = isChecked ? UIColor.green : UIColor.blue

            }
        
        if isChecked {
            
            sender.setImage(checkedImg, for: .normal)
            print("Enable Sign Up")
            signupbutton.isEnabled = true

            
        } else {
            
            sender.setImage(unCheckedImg, for: .normal)
            print("Disable Sign Up")
            signupbutton.isEnabled = false


        }
            
        
        print("checkBox1 Button Has Been Clicked!!!")
        
    }
    
    
    
    @IBAction func onCheck2(_ sender: Any) {
        
        if let snd = sender as? UIButton {
            
            if isChecked {
                snd.setImage(checkedImg, for: .normal)
                isChecked = !isChecked
            } else {
                
                isChecked = !isChecked
                snd.setImage(unCheckedImg, for: .normal)
                
            }
            
        }
        
        

            
        
        print("checkBox222 Button Has Been Clicked!!!")
    }
    
    
    
    
    
    
}

