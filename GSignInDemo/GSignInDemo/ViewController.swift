//
//  ViewController.swift
//  GSignInDemo
//
//  Created by Alfonso Torres on 10/23/17.
//  Copyright © 2017 Alfonso Torres. All rights reserved.
//

import UIKit
import Google
import GoogleSignIn

class ViewController: UIViewController, GIDSignInUIDelegate, GIDSignInDelegate {
    //Label will be used to see the users email
    var name = String()
    var email = String()

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let bruh = segue.destination as? SignedInViewController
        print(name)
        print(email)
        bruh?.name = name
        bruh?.email = email
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //error object
        var error : NSError?
        
        //setting the error
        GGLContext.sharedInstance().configureWithError(&error)
        
        //if any error stop execution and print error
        if error != nil{
            print(error ?? "google error")
            return
        }
        
        //adding the delegates
        GIDSignIn.sharedInstance().uiDelegate = self
        GIDSignIn.sharedInstance().delegate = self
        
        //getting the signin button and adding it to view
        let googleSignInButton = GIDSignInButton()
        googleSignInButton.center = view.center
        view.addSubview(googleSignInButton)
    }
    
    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
        
        //if any error stop and print the error
        if error != nil{
            print(error ?? "google error")
            return
        }
        name = user.profile.name
        email = user.profile.email
        
        performSegue(withIdentifier: "GSI", sender: self)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

