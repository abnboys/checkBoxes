//
//  CheckBox.swift
//  CheckBox
//
//  Created by penumutchu.prasad@gmail.com on 07/01/18.
//  Copyright © 2018 abnboys. All rights reserved.
//

import UIKit

class CheckBox: UIButton {
    
    
    override func awakeFromNib() {
        self.addTarget(self, action: #selector(onClickOfCheckBoxButton(sender:)), for: .touchUpInside)
        
        self.setImage(unCheckedImg, for: .normal)
        isChecked = false
    }
    

    /// Images
    
    let checkedImg = UIImage.init(named: "check")!
    let unCheckedImg = UIImage.init(named: "uncheck")!

    /// Bool Property for Checking
    
    var isChecked: Bool = false {
       
        didSet{
            
            if isChecked {
                
                self.setImage(checkedImg, for: .normal)
            } else {
                
                self.setImage(unCheckedImg, for: .normal)
            }
            
        }
        
    }
    
    
    //// Add your own Method for Configure this Functonality... by using addTarget Method
    
    @objc func onClickOfCheckBoxButton(sender: UIButton) {
        
        if sender == self {
            
            if isChecked {
                
                isChecked = !isChecked
            } else {
                
                isChecked = !isChecked

            }
            
        }
        
        print("checkBox Button Has Been Clicked!!!")
    }
    
    

}
