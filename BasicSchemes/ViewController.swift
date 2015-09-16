//
//  ViewController.swift
//  BasicSchemes
//
//  Created by Dustin Pfannenstiel on 9/15/15.
//  Copyright (c) 2015 Flat World. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let arguments = NSProcessInfo.processInfo().arguments as? [String],
            let indexOfColorFlag = find(arguments, "--Color") where arguments.count > indexOfColorFlag {
                let colorString = arguments[indexOfColorFlag+1].lowercaseString
                
                let color:UIColor
                
                switch colorString {
                    case "blue":
                        color = UIColor.blueColor()
                    case "red":
                        color = UIColor.redColor()
                    case "green":
                        color = UIColor.greenColor()
                    case "yellow":
                        color = UIColor.yellowColor()
                    default:
                        color = UIColor.grayColor()
                }
                
                self.view.backgroundColor = color
                label.text = colorString.capitalizedString
                
        } else {
            label.text = "No color selected!"
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

