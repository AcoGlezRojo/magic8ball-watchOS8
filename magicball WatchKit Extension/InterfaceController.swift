//
//  InterfaceController.swift
//  magicball WatchKit Extension
//
//  Created by Acoidán González on 29/9/21.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]

    @IBOutlet weak var BallView: WKInterfaceImage!
    override func awake(withContext context: Any?) {
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
    }

    @IBAction func AskButton() {
        print("boton pulsado")
        BallView.setImage( UIImage(named: ballArray[ Int.random(in: 0...4)] ))
        
    }
}
