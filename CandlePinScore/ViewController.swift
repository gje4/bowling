//
//  ViewController.swift
//  CandlePinScore
//
//  Created by George Fitzgibbons on 1/12/15.
//  Copyright (c) 2015 Nanigans. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    

    
    var keyCommand: UIKeyCommand!

    
    //players
    
    
    @IBOutlet weak var playerOneName: UITextField!
    
    @IBOutlet weak var playerTwoName: UITextField!
    
    @IBOutlet weak var playerThreeName: UITextField!
    
    
    //core data feed
    var players: Entity!
    


    //scores
    
  

    //player 1
    @IBOutlet weak var playerOneFrameOne: UITextField!

    @IBOutlet weak var playerOneFrame2_1: UITextField!
    @IBOutlet weak var playerOneFrame2_2: UITextField!
    @IBOutlet weak var playerOneFrame3_1: UITextField!
    @IBOutlet weak var playerOneFrame3_2: UITextField!
    @IBOutlet weak var playerOneFrame4_1: UITextField!
    @IBOutlet weak var playerOneFrame4_2: UITextField!
    @IBOutlet weak var playerOneFrame5_1: UITextField!
    @IBOutlet weak var playerOneFrame5_2: UITextField!
    @IBOutlet weak var playerOneFrame6_1: UITextField!
    @IBOutlet weak var playerOneFrame6_2: UITextField!
    @IBOutlet weak var playerOneFrame7_1: UITextField!
    @IBOutlet weak var playerOneFrame7_2: UITextField!
    @IBOutlet weak var playerOneFrame8_1: UITextField!
    @IBOutlet weak var playerOneFrame8_2: UITextField!
    @IBOutlet weak var playerOneFrame9_1: UITextField!
    @IBOutlet weak var playerOneFrame9_2: UITextField!
    @IBOutlet weak var playerOneFrame10_1: UITextField!
    @IBOutlet weak var playerOneFrame10_2: UITextField!
    
    
   //login Button
    
    @IBAction func loginButton(sender: UIButton) {
        
        self.performSegueWithIdentifier("profileSegue", sender: nil)

    }
    
    //Submit button
    
    
    
    @IBAction func submitScore(sender: UIButton) {
    }

    
    

    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
  

    }
    func  textFiledShouldReturn(textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        return true;
    }
    
    
        
        
    override   func touchesBegan(touches: NSSet!, withEvent event: UIEvent) {

        
        //stirkes and spares
        var strike = "x"
        var spare = "/"
        
//scores
        
// frame 2 scores

let frame1 = playerOneFrameOne.text.toInt() ?? 0
        
        

let frame21 = playerOneFrame2_1.text.toInt() ?? 0
        
let frame22 = playerOneFrame2_2.text.toInt() ?? 0

       
// frame 3 scores

        
let frame31 = playerOneFrame3_1.text.toInt() ?? 0
let frame32 = playerOneFrame3_2.text.toInt() ?? 0
        
// frame 4 scores
        
let frame41 = playerOneFrame4_1.text.toInt() ?? 0
let frame42 = playerOneFrame4_2.text.toInt() ?? 0
        
// frame 5 scores
        
let frame51 = playerOneFrame5_1.text.toInt() ?? 0
let frame52 = playerOneFrame5_2.text.toInt() ?? 0
        
// frame 6 scores
        
let frame61 = playerOneFrame6_1.text.toInt() ?? 0
let frame62 = playerOneFrame6_2.text.toInt() ?? 0
        
        // frame 7 scores
        
        let frame71 = playerOneFrame7_1.text.toInt() ?? 0
        let frame72 = playerOneFrame7_2.text.toInt() ?? 0
        
        
        // frame 8 scores
        
        let frame81 = playerOneFrame8_1.text.toInt() ?? 0
        let frame82 = playerOneFrame8_2.text.toInt() ?? 0
    
        // frame 9 scores
        
        let frame91 = playerOneFrame9_1.text.toInt() ?? 0
        let frame92 = playerOneFrame9_2.text.toInt() ?? 0
        
        // frame 10 scores
        
        let frame101 = playerOneFrame10_1.text.toInt() ?? 0
        let frame102 = playerOneFrame10_2.text.toInt() ?? 0
        
    

//math
        //frame 2

                

for score2 in playerOneFrameOne.text
{
    if  frame22 > 1
    {
    print("strikesecondframe")
        
    
    }
    
    else if playerOneFrameOne.text == "x" {

            var inputTextField: UITextField?
            
            
            let alertController = UIAlertController(title: "Strike", message: "Pins from first two rolls are added to last frame", preferredStyle: .Alert)
            let ok = UIAlertAction(title: "OK", style: .Default, handler: { (action) -> Void in
                // Do whatever you want with inputTextField?.text

                
                let strike_score:Int? = inputTextField!.text.toInt() // secondText is UITextField
                let frame2Score = (10 + strike_score!) + frame21
                self.playerOneFrame2_2.text = "\(frame2Score)"
                println("stirk score = \(strike_score)")
                

                print("strike")

            })
            let cancel = UIAlertAction(title: "Cancel", style: .Cancel) { (action) -> Void in
            }
            alertController.addAction(ok)
            alertController.addAction(cancel)
            alertController.addTextFieldWithConfigurationHandler { (textField) -> Void in
                inputTextField = textField
                
            }
            presentViewController(alertController, animated: true, completion: nil)
            
        }
    
        
    
        else if    playerOneFrameOne.text == "/"    {

            var inputTextField: UITextField?
            
            
            let alertController = UIAlertController(title: "Spare", message: "Pins from first roll are added to last frame", preferredStyle: .Alert)
            let ok = UIAlertAction(title: "OK", style: .Default, handler: { (action) -> Void in
                // Do whatever you want with inputTextField?.text
   
                let spare_score:Int? = inputTextField!.text.toInt() // secondText is UITextField
                
                let frame2Score = (10 + spare_score!) + frame21
                self.playerOneFrame2_2.text = "\(frame2Score)"
                println("spare score = \(spare_score)")
                
                print("spare")
                
            })
            let cancel = UIAlertAction(title: "Cancel", style: .Cancel) { (action) -> Void in
            }
            alertController.addAction(ok)
            alertController.addAction(cancel)
            alertController.addTextFieldWithConfigurationHandler { (textField) -> Void in
                inputTextField = textField
                
            }
            presentViewController(alertController, animated: true, completion: nil)
 
            
        }
        
        else
        {
            let frame2Score = frame1 + frame21

        playerOneFrame2_2.text = "\(frame2Score)"
            print("nostrike")

            break
        }
        }
        
    
        // frame 3
        for score3 in playerOneFrame3_1.text
        {
            if  frame32 > 1
            {
                print("strikethirdframe")
                
                
            }
            else if playerOneFrame3_1.text == "x" {

            var inputTextField: UITextField?
            
            
            let alertController = UIAlertController(title: "Strike", message: "Pins from first two rolls are added to last frame", preferredStyle: .Alert)
            let ok = UIAlertAction(title: "OK", style: .Default, handler: { (action) -> Void in
                // Do whatever you want with inputTextField?.text
                
                
                let strike_score:Int? = inputTextField!.text.toInt() // secondText is UITextField
                let frame3Score = (10 + strike_score!) + frame31 + frame22
                self.playerOneFrame3_2.text = "\(frame3Score)"
                println("stirk score = \(strike_score)")
                
                
                print("strike")
                
            })
            let cancel = UIAlertAction(title: "Cancel", style: .Cancel) { (action) -> Void in
            }
            alertController.addAction(ok)
            alertController.addAction(cancel)
            alertController.addTextFieldWithConfigurationHandler { (textField) -> Void in
                inputTextField = textField
                
            }
            presentViewController(alertController, animated: true, completion: nil)
            
            
        }
        else if    playerOneFrame3_1.text == "/"    {
            
            var inputTextField: UITextField?
            
            
            let alertController = UIAlertController(title: "Spare", message: "Pins from first roll are added to last frame", preferredStyle: .Alert)
            let ok = UIAlertAction(title: "OK", style: .Default, handler: { (action) -> Void in
                // Do whatever you want with inputTextField?.text
                
                let spare_score:Int? = inputTextField!.text.toInt() // secondText is UITextField
                
                let frame3Score = (10 + spare_score!) + frame31 + frame22
                self.playerOneFrame3_2.text = "\(frame3Score)"
                println("spare score = \(spare_score)")
                
                print("spare")
                
            })
            let cancel = UIAlertAction(title: "Cancel", style: .Cancel) { (action) -> Void in
            }
            alertController.addAction(ok)
            alertController.addAction(cancel)
            alertController.addTextFieldWithConfigurationHandler { (textField) -> Void in
                inputTextField = textField
                
            }
            presentViewController(alertController, animated: true, completion: nil)
            
                        
            
        }
            
        else
        {
            let frame3Score = frame31 + frame22
            
            playerOneFrame3_2.text = "\(frame3Score)"
            print("nostrike")
            
            break
        }
        }
        
        //frame 4
        
        
        for score4 in playerOneFrame4_1.text
        {
            if  frame42 > 1
            {
                print("strikefourthframe")
                
                
            }
            else if playerOneFrame4_1.text == "x" {
        
   
            
            var inputTextField: UITextField?
            
            
            let alertController = UIAlertController(title: "Strike", message: "Pins from first two rolls are added to last frame", preferredStyle: .Alert)
            let ok = UIAlertAction(title: "OK", style: .Default, handler: { (action) -> Void in
                // Do whatever you want with inputTextField?.text
                
                
                let strike_score:Int? = inputTextField!.text.toInt() // secondText is UITextField
                let frame4Score = (10 + strike_score!) + frame41 + frame32
                self.playerOneFrame4_2.text = "\(frame4Score)"
                println("stirk score = \(strike_score)")
                
                
                print("strike")
                
            })
            let cancel = UIAlertAction(title: "Cancel", style: .Cancel) { (action) -> Void in
            }
            alertController.addAction(ok)
            alertController.addAction(cancel)
            alertController.addTextFieldWithConfigurationHandler { (textField) -> Void in
                inputTextField = textField
                
            }
            presentViewController(alertController, animated: true, completion: nil)
            
        }
        else if    playerOneFrame4_1.text == "/"    {
            
            var inputTextField: UITextField?
            
            
            let alertController = UIAlertController(title: "Spare", message: "Pins from first roll are added to last frame", preferredStyle: .Alert)
            let ok = UIAlertAction(title: "OK", style: .Default, handler: { (action) -> Void in
                // Do whatever you want with inputTextField?.text
                
                let spare_score:Int? = inputTextField!.text.toInt() // secondText is UITextField
                
                let frame4Score = (10 + spare_score!) + frame41  + frame32
                self.playerOneFrame4_2.text = "\(frame4Score)"
                println("spare score = \(spare_score)")
                
                print("spare")
                
            })
            let cancel = UIAlertAction(title: "Cancel", style: .Cancel) { (action) -> Void in
            }
            alertController.addAction(ok)
            alertController.addAction(cancel)
            alertController.addTextFieldWithConfigurationHandler { (textField) -> Void in
                inputTextField = textField
                
            }
            presentViewController(alertController, animated: true, completion: nil)
            
            
        }
            
        else
        {
            let frame4Score = frame41 + frame32
            playerOneFrame4_2.text = "\(frame4Score)"
            print("nostrike")
}
            
            
            
        
        // 5 frame
            
            
            for score5 in playerOneFrame5_1.text
            {
                if  frame52 > 1
                {
                    print("strikefivthframe")
                    
                    
                }
                else if playerOneFrame5_1.text == "x" {
 
            
            var inputTextField: UITextField?
            
            
            let alertController = UIAlertController(title: "Strike", message: "Pins from first two rolls are added to last frame", preferredStyle: .Alert)
            let ok = UIAlertAction(title: "OK", style: .Default, handler: { (action) -> Void in
                // Do whatever you want with inputTextField?.text
                
                
                let strike_score:Int? = inputTextField!.text.toInt() // secondText is UITextField
                let frame5Score = (10 + strike_score!) + frame51 + frame42
                self.playerOneFrame5_2.text = "\(frame5Score)"
                println("stirk score = \(strike_score)")
                
                
                print("strike")
                
            })
            let cancel = UIAlertAction(title: "Cancel", style: .Cancel) { (action) -> Void in
            }
            alertController.addAction(ok)
            alertController.addAction(cancel)
            alertController.addTextFieldWithConfigurationHandler { (textField) -> Void in
                inputTextField = textField
                
            }
            presentViewController(alertController, animated: true, completion: nil)
            
        }
        else if    playerOneFrame5_1.text == "/"    {
            
            var inputTextField: UITextField?
            
            
            let alertController = UIAlertController(title: "Spare", message: "Pins from first roll are added to last frame", preferredStyle: .Alert)
            let ok = UIAlertAction(title: "OK", style: .Default, handler: { (action) -> Void in
                // Do whatever you want with inputTextField?.text
                
                let spare_score:Int? = inputTextField!.text.toInt() // secondText is UITextField
                
                let frame5Score = (10 + spare_score!) + frame51 + frame42
                self.playerOneFrame5_2.text = "\(frame5Score)"
                println("spare score = \(spare_score)")
                
                print("spare")
                
            })
            let cancel = UIAlertAction(title: "Cancel", style: .Cancel) { (action) -> Void in
            }
            alertController.addAction(ok)
            alertController.addAction(cancel)
            alertController.addTextFieldWithConfigurationHandler { (textField) -> Void in
                inputTextField = textField
                
            }
            presentViewController(alertController, animated: true, completion: nil)
            
            
        }
            
        else
        {
            let frame5Score = frame51 + frame42
            playerOneFrame5_2.text = "\(frame5Score)"
            print("nostrike")
        }
        
        //frame 6
        
        for score6 in playerOneFrame6_1.text
        {
            if  frame62 > 1
            {
                print("strikefirstframe")
                
                
            }
                
            else if playerOneFrame6_1.text == "x" {
                
                var inputTextField: UITextField?
                
                
                let alertController = UIAlertController(title: "Strike", message: "Pins from first two rolls are added to last frame", preferredStyle: .Alert)
                let ok = UIAlertAction(title: "OK", style: .Default, handler: { (action) -> Void in
                    // Do whatever you want with inputTextField?.text
                    
                    
                    let strike_score:Int? = inputTextField!.text.toInt() // secondText is UITextField
                    let frame6Score = (10 + strike_score!) + frame61 + frame52
                    self.playerOneFrame6_2.text = "\(frame6Score)"
                    println("stirk score = \(strike_score)")
                    
                    
                    print("strike")
                    
                })
                let cancel = UIAlertAction(title: "Cancel", style: .Cancel) { (action) -> Void in
                }
                alertController.addAction(ok)
                alertController.addAction(cancel)
                alertController.addTextFieldWithConfigurationHandler { (textField) -> Void in
                    inputTextField = textField
                    
                }
                presentViewController(alertController, animated: true, completion: nil)
                
            }
                
                
                
            else if    playerOneFrame6_1.text == "/"    {
                
                var inputTextField: UITextField?
                
                
                let alertController = UIAlertController(title: "Spare", message: "Pins from first roll are added to last frame", preferredStyle: .Alert)
                let ok = UIAlertAction(title: "OK", style: .Default, handler: { (action) -> Void in
                    // Do whatever you want with inputTextField?.text
                    
                    let spare_score:Int? = inputTextField!.text.toInt() // secondText is UITextField
                    
                    let frame6Score = (10 + spare_score!) + frame51 + frame52
                    self.playerOneFrame6_2.text = "\(frame6Score)"
                    println("spare score = \(spare_score)")
                    
                    print("spare")
                    
                })
                let cancel = UIAlertAction(title: "Cancel", style: .Cancel) { (action) -> Void in
                }
                alertController.addAction(ok)
                alertController.addAction(cancel)
                alertController.addTextFieldWithConfigurationHandler { (textField) -> Void in
                    inputTextField = textField
                    
                }
                presentViewController(alertController, animated: true, completion: nil)
                
                
            }
                
            else
            {
                let frame6Score = frame61   + frame52
                
                playerOneFrame6_2.text = "\(frame6Score)"
                print("nostrike")
                
                break
            }
        }

    
        
        //frame 7
        
        for score7 in playerOneFrame7_1.text
        {
            if  frame72 > 1
            {
                print("strikesixframe")
                
                
            }
                
            else if playerOneFrame7_1.text == "x" {
                
                var inputTextField: UITextField?
                
                
                let alertController = UIAlertController(title: "Strike", message: "Pins from first two rolls are added to last frame", preferredStyle: .Alert)
                let ok = UIAlertAction(title: "OK", style: .Default, handler: { (action) -> Void in
                    // Do whatever you want with inputTextField?.text
                    
                    
                    let strike_score:Int? = inputTextField!.text.toInt() // secondText is UITextField
                    let frame7score = (10 + strike_score!) + frame71 + frame62
                    self.playerOneFrame7_2.text = "\(frame7score)"
                    println("stirk score = \(strike_score)")
                    
                    
                    print("strike")
                    
                })
                let cancel = UIAlertAction(title: "Cancel", style: .Cancel) { (action) -> Void in
                }
                alertController.addAction(ok)
                alertController.addAction(cancel)
                alertController.addTextFieldWithConfigurationHandler { (textField) -> Void in
                    inputTextField = textField
                    
                }
                presentViewController(alertController, animated: true, completion: nil)
                
            }
                
                
                
            else if    playerOneFrame7_1.text == "/"    {
                
                var inputTextField: UITextField?
                
                
                let alertController = UIAlertController(title: "Spare", message: "Pins from first roll are added to last frame", preferredStyle: .Alert)
                let ok = UIAlertAction(title: "OK", style: .Default, handler: { (action) -> Void in
                    // Do whatever you want with inputTextField?.text
                    
                    let spare_score:Int? = inputTextField!.text.toInt() // secondText is UITextField
                    
                    let frame7Score = (10 + spare_score!) + frame71 + frame62
                    self.playerOneFrame7_2.text = "\(frame7Score)"
                    println("spare score = \(spare_score)")
                    
                    print("spare")
                    
                })
                let cancel = UIAlertAction(title: "Cancel", style: .Cancel) { (action) -> Void in
                }
                alertController.addAction(ok)
                alertController.addAction(cancel)
                alertController.addTextFieldWithConfigurationHandler { (textField) -> Void in
                    inputTextField = textField
                    
                }
                presentViewController(alertController, animated: true, completion: nil)
                
                
            }
                
            else
            {
                let frame7Score = frame71   + frame62
                
                playerOneFrame7_2.text = "\(frame7Score)"
                print("nostrike")
                
                break
            }
        }

        
        
        
        //frame 8
        
        for score8 in playerOneFrame8_1.text
        {
            if  frame82 > 1
            {
                print("strikesixframe")
                
                
            }
                
            else if playerOneFrame8_1.text == "x" {
                
                var inputTextField: UITextField?
                
                
                let alertController = UIAlertController(title: "Strike", message: "Pins from first two rolls are added to last frame", preferredStyle: .Alert)
                let ok = UIAlertAction(title: "OK", style: .Default, handler: { (action) -> Void in
                    // Do whatever you want with inputTextField?.text
                    
                    
                    let strike_score:Int? = inputTextField!.text.toInt() // secondText is UITextField
                    let frame8score = (10 + strike_score!) + frame81 + frame72
                    self.playerOneFrame8_2.text = "\(frame8score)"
                    println("stirk score = \(strike_score)")
                    
                    
                    print("strike")
                    
                })
                let cancel = UIAlertAction(title: "Cancel", style: .Cancel) { (action) -> Void in
                }
                alertController.addAction(ok)
                alertController.addAction(cancel)
                alertController.addTextFieldWithConfigurationHandler { (textField) -> Void in
                    inputTextField = textField
                    
                }
                presentViewController(alertController, animated: true, completion: nil)
                
            }
                
                
                
            else if    playerOneFrame8_1.text == "/"    {
                
                var inputTextField: UITextField?
                
                
                let alertController = UIAlertController(title: "Spare", message: "Pins from first roll are added to last frame", preferredStyle: .Alert)
                let ok = UIAlertAction(title: "OK", style: .Default, handler: { (action) -> Void in
                    // Do whatever you want with inputTextField?.text
                    
                    let spare_score:Int? = inputTextField!.text.toInt() // secondText is UITextField
                    
                    let frame8Score = (10 + spare_score!) + frame71 + frame72
                    self.playerOneFrame8_2.text = "\(frame8Score)"
                    println("spare score = \(spare_score)")
                    
                    print("spare")
                    
                })
                let cancel = UIAlertAction(title: "Cancel", style: .Cancel) { (action) -> Void in
                }
                alertController.addAction(ok)
                alertController.addAction(cancel)
                alertController.addTextFieldWithConfigurationHandler { (textField) -> Void in
                    inputTextField = textField
                    
                }
                presentViewController(alertController, animated: true, completion: nil)
                
                
            }
                
            else
            {
                let frame8Score = frame81   + frame72
                
                playerOneFrame8_2.text = "\(frame8Score)"
                print("nostrike")
                
                break
            }
        }

        // frame 9
        
        
        
        for score9 in playerOneFrame9_1.text
        {
            if  frame92 > 1
            {
                print("strikesixframe")
                
                
            }
                
            else if playerOneFrame9_1.text == "x" {
                
                var inputTextField: UITextField?
                
                
                let alertController = UIAlertController(title: "Strike", message: "Pins from first two rolls are added to last frame", preferredStyle: .Alert)
                let ok = UIAlertAction(title: "OK", style: .Default, handler: { (action) -> Void in
                    // Do whatever you want with inputTextField?.text
                    
                    
                    let strike_score:Int? = inputTextField!.text.toInt() // secondText is UITextField
                    let frame9score = (10 + strike_score!) + frame91 + frame82
                    self.playerOneFrame9_2.text = "\(frame9score)"
                    println("stirk score = \(strike_score)")
                    
                    
                    print("strike")
                    
                })
                let cancel = UIAlertAction(title: "Cancel", style: .Cancel) { (action) -> Void in
                }
                alertController.addAction(ok)
                alertController.addAction(cancel)
                alertController.addTextFieldWithConfigurationHandler { (textField) -> Void in
                    inputTextField = textField
                    
                }
                presentViewController(alertController, animated: true, completion: nil)
                
            }
                
                
                
            else if    playerOneFrame9_1.text == "/"    {
                
                var inputTextField: UITextField?
                
                
                let alertController = UIAlertController(title: "Spare", message: "Pins from first roll are added to last frame", preferredStyle: .Alert)
                let ok = UIAlertAction(title: "OK", style: .Default, handler: { (action) -> Void in
                    // Do whatever you want with inputTextField?.text
                    
                    let spare_score:Int? = inputTextField!.text.toInt() // secondText is UITextField
                    
                    let frame9Score = (10 + spare_score!) + frame81 + frame82
                    self.playerOneFrame9_2.text = "\(frame9Score)"
                    println("spare score = \(spare_score)")
                    
                    print("spare")
                    
                })
                let cancel = UIAlertAction(title: "Cancel", style: .Cancel) { (action) -> Void in
                }
                alertController.addAction(ok)
                alertController.addAction(cancel)
                alertController.addTextFieldWithConfigurationHandler { (textField) -> Void in
                    inputTextField = textField
                    
                }
                presentViewController(alertController, animated: true, completion: nil)
                
                
            }
                
            else
            {
                let frame9Score = frame91   + frame82
                
                playerOneFrame9_2.text = "\(frame9Score)"
                print("nostrike")
                
                break
            }
        }
   
        
        
        // frame 10
        
        
        
        for score10 in playerOneFrame10_1.text
        {
            if  frame102 > 1
            {
                print("strikesixframe")
                
                
            }
                
            else if playerOneFrame10_1.text == "x" {
                
                var inputTextField: UITextField?
                
                
                let alertController = UIAlertController(title: "Strike", message: "Pins from first two rolls are added to last frame", preferredStyle: .Alert)
                let ok = UIAlertAction(title: "OK", style: .Default, handler: { (action) -> Void in
                    // Do whatever you want with inputTextField?.text
                    
                    
                    let strike_score:Int? = inputTextField!.text.toInt() // secondText is UITextField
                    let frame10score = (10 + strike_score!) + frame101 + frame92
                    self.playerOneFrame10_2.text = "\(frame10score)"
                    println("stirk score = \(strike_score)")
                    
                    
                    print("strike")
                    
                })
                let cancel = UIAlertAction(title: "Cancel", style: .Cancel) { (action) -> Void in
                }
                alertController.addAction(ok)
                alertController.addAction(cancel)
                alertController.addTextFieldWithConfigurationHandler { (textField) -> Void in
                    inputTextField = textField
                    
                }
                presentViewController(alertController, animated: true, completion: nil)
                
            }
                
                
                
            else if    playerOneFrame10_1.text == "/"    {
                
                var inputTextField: UITextField?
                
                
                let alertController = UIAlertController(title: "Spare", message: "Pins from first roll are added to last frame", preferredStyle: .Alert)
                let ok = UIAlertAction(title: "OK", style: .Default, handler: { (action) -> Void in
                    // Do whatever you want with inputTextField?.text
                    
                    let spare_score:Int? = inputTextField!.text.toInt() // secondText is UITextField
                    
                    let frame10Score = (10 + spare_score!) + frame101 + frame92
                    self.playerOneFrame10_2.text = "\(frame10Score)"
                    println("spare score = \(spare_score)")
                    
                    print("spare")
                    
                })
                let cancel = UIAlertAction(title: "Cancel", style: .Cancel) { (action) -> Void in
                }
                alertController.addAction(ok)
                alertController.addAction(cancel)
                alertController.addTextFieldWithConfigurationHandler { (textField) -> Void in
                    inputTextField = textField
                    
                }
                presentViewController(alertController, animated: true, completion: nil)
                
                
            }
                
            else
            {
                let frame10Score = frame101   + frame92
                
                playerOneFrame10_2.text = "\(frame10Score)"
                print("nostrike")
                
                break
            }
     
        
        
                }
            }
        }
        
        
        
       
        self.view.endEditing(true)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    //MARK: - UITableViewDelegate
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //how many rows
return 1
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath section: Int) -> Int {
        //how many rows
        
        return 1

    }
    
    

    
//
    //MARK - UIKeyCommand

    
    //score helper funtion
//    
    //Saving to Core data
    
    
    func saveToCoreData (indexPath: NSIndexPath, playerone:String, playertwo:String, playerthree:String) {
        
        let p1 = playerOneName.text
        
        let p2 = playerOneName.text
        
        let p3 = playerOneName.text


        self.players.playerone = p1
        
        self.players.playertwo = p2
        self.players.playerthree = p3
        
        
        println(playerOneName.text)
        
        (UIApplication.sharedApplication().delegate as AppDelegate).saveContext()
        
    }
    
    //pop up controller
    
    func createUIAlertController (indexPath: NSIndexPath) {
        let alert = UIAlertController(title: "Spare or strike", message: "rules for strike and spare", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addTextFieldWithConfigurationHandler { (textField) -> Void in
            
            textField.placeholder = "Pins from first roll"
            
            
            textField.secureTextEntry = false
            
            

            
        }
        //save function daving the data
        
        let textField = alert.textFields![0] as UITextField
        
        //Strike
        
        let strike = UIAlertAction(title: "Strike",
            style: UIAlertActionStyle.Destructive) { (UIAlertAction) -> Void in
                
                //Save to FB
                textField.placeholder = "Pins from first two rolls are added to last frame"
                
                var text = textField.text
                
                
                
                
        }

    }


}