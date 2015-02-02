
//  ProfileViewController.swift
//
//
//  Created by George Fitzgibbons on 12/2/14.
//  Copyright (c) 2014 Nanigans. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, FBLoginViewDelegate {
    
    
    
    @IBOutlet weak var fbLoginView: FBLoginView!
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var profileImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //api pull request
      self.fbLoginView.delegate = self
        self.fbLoginView.readPermissions = ["public_profile", "publish_actions"]
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func mapViewButtonTapped(sender: UIButton) {
        
        
        performSegueWithIdentifier("mapSegue", sender: nil)
        
        
        
    }
    func loginViewShowingLoggedInUser(loginView: FBLoginView!) {
        profileImageView.hidden = false
        nameLabel.hidden = false
    }
    func loginViewFetchedUserInfo(loginView: FBLoginView!, user: FBGraphUser!) {
        
        println(user)
        
        
        nameLabel.text = user.name
        
        let userImageURL = "https://graph.facebook.com/\(user.objectID)/picture?type=small"
        
        
        
        let url = NSURL(string:userImageURL)
        
        let imageData = NSData(contentsOfURL: url!)
        
        let image = UIImage(data: imageData!)
        
        profileImageView.image = image
        
        
        
        
        
        
        
    }
    
    func loginViewShowingLoggedOutUser(loginView: FBLoginView!) {
        
        profileImageView.hidden = true
        nameLabel.hidden = true
    }
    
    func loginView(loginView: FBLoginView!, handleError error: NSError!) {
        
        println("Error: \(error.localizedDescription)")
        
    }
    
    
    
    
    
    
    
    
    
}
