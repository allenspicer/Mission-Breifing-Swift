//
//  ViewController.swift
//  Mission Breifing Swift
//
//  Created by Allen Spicer on 5/10/16.
//  Copyright © 2016 Allen Spicer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


@IBOutlet weak var greetingLabel: UILabel!
@IBOutlet weak var agentPassword: UITextField!
@IBOutlet weak var missionBreifing: UITextView!
@IBOutlet weak var agentName: UITextField!


    override func viewDidLoad() {
        super.viewDidLoad()
greetingLabel.text = ""
agentPassword.text = ""
missionBreifing.text = ""
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

@IBAction func authenticateButton(sender: AnyObject){

        if (agentName.isFirstResponder()){
            agentName.resignFirstResponder()
        }
        
        self.view.backgroundColor = .greenColor()
        
    
        
        //parse name
        let agentNameArray = agentName.text?.componentsSeparatedByString(" ")
        
        greetingLabel.text = "Good evening, Agent\(agentName.text)"
        
        missionBreifing.text = "This mission will be an arduous one, fraught with peril. You will cover much strange and unfamiliar territory. Should you choose to accept this mission, Agent \(agentNameArray?.last), you will certainly be disavowed, but you will be doing your country a great service. This message will self destruct in 5 seconds."
    
        
        
    }


}








