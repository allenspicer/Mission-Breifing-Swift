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

let agentNameArray = agentName.text?.componentsSeparatedByString(" ")

    if (agentNameArray!.last!.isEmpty){
        self.view.backgroundColor = .redColor()
        missionBreifing.text = ""
            }else{
                self.view.backgroundColor = .greenColor()

               let lastName = agentNameArray!.last
                
                greetingLabel.text = "Good evening, Agent \(lastName!)"
                
                missionBreifing.text = "This mission will be an arduous one, fraught with peril. You will cover much strange and unfamiliar territory. Should you choose to accept this mission, Agent \(lastName!), you will certainly be disavowed, but you will be doing your country a great service. This message will self destruct in 5 seconds."
            }
}

}





