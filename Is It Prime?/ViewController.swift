//
//  ViewController.swift
//  Is It Prime?
//
//  Created by Ale Ramírez Fernández on 10/11/15.
//  Copyright © 2015 AleFernandez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mNumberTxt: UITextField!
    
    @IBOutlet weak var mLblResult: UILabel!
    
    @IBAction func isItPrime(sender: AnyObject) {
        
        if let mNumber = Int(mNumberTxt.text!) {
        
            var mIsPrime = true
        
            if mNumber == 1 {
            
                mIsPrime = false
            
            }
        
            if mNumber != 2 && mNumber != 1 {
            
                for var i = 2; i < mNumber; i++ {
                
                    if mNumber % i == 0 {
                    
                        mIsPrime = false
                    
                    }
                
                }
            
            }
        
            if mIsPrime {
                mLblResult.text = "\(mNumber) is prime! :)"
            }else {
                mLblResult.text = "\(mNumber) is not prime! :("
            }
        }else {
            mLblResult.text = "Please, enter a number!!"
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

