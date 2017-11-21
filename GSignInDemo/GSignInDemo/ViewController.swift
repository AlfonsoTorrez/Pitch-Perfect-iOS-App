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

import FacebookLogin
import FBSDKCoreKit

class ViewController: UIViewController, GIDSignInUIDelegate, GIDSignInDelegate, LoginButtonDelegate {
    func loginButtonDidCompleteLogin(_ loginButton: LoginButton, result: LoginResult) {
        self.getFBUserData()
    }
    
    func loginButtonDidLogOut(_ loginButton: LoginButton) {
        print("logged out")
    }
    
    //Label will be used to see the users email
    var name = String()
    var email = String()

    @IBOutlet weak var GSView: UIView!
    @IBOutlet weak var FSView: UIView!
    var dict : [String : AnyObject]!
    
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
        //creating button for Facebook
        let loginButton = LoginButton(readPermissions: [ .publicProfile ])
        loginButton.center = FSView.center
        
        //if the user is already logged in
        if (FBSDKAccessToken.current()) != nil{
            getFBUserData()
        }
        
        //adding it to view
        view.addSubview(loginButton)
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
        googleSignInButton.center = GSView.center
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
    /*
    //when facebook login button clicked
    @objc func loginButtonClicked() {
        let loginManager = LoginManager()
        loginManager.logIn([.publicProfile], viewController: self) { loginResult in
        switch loginResult {
            case .failed(let error):
                print(error)
            case .cancelled:
                print("User cancelled login.")
            case .success(let grantedPermissions, let declinedPermissions, let accessToken):
                self.getFBUserData()
            }
        }
    }
    */
    //function is fetching the user data
    func getFBUserData(){
        if((FBSDKAccessToken.current()) != nil){
            FBSDKGraphRequest(graphPath: "me", parameters: ["fields": "id, name, picture.type(large), email"]).start(completionHandler: { (connection, result, error) -> Void in
                if (error == nil){
                    self.dict = result as! [String : AnyObject]
                    print(result!)
                    print(self.dict)
                }
            })
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

