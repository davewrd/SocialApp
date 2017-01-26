//
//  SignInVC.swift
//  SocialApp
//
//  Created by David on 25/01/2017.
//  Copyright © 2017 David Ward. All rights reserved.
//

import UIKit
import FBSDKLoginKit
import FBSDKCoreKit
import Firebase

class SignInVC: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func facebookBtnTapped(_ sender: Any) {
    
    let facebookLogin = FBSDKLoginManager()
    facebookLogin.logIn(withReadPermissions: ["email"], from: self) { (result, error) in
      if error != nil {
        print("DAVID: Unable to authenticate with facebook - \(error)")
      } else if result?.isCancelled == true {
        print("DAVID: User cancelled facebook authentication'")
      } else {
        print("DAVID: Successfully authenticated with Facebook")
        let credential = FIRFacebookAuthProvider.credential(withAccessToken: FBSDKAccessToken.current().tokenString)
        self.firebaseAuth(credential)
      }
    }
  }
  
  func firebaseAuth(_ credential: FIRAuthCredential) {
    FIRAuth.auth()?.signIn(with: credential, completion: { (user, error) in
      if error != nil {
        print("DAVID: Unable to authenticate with Firebase - \(error)")
      } else {
        print("DAVID: Successfully been able to authenticate with Firebase")
      }
    })
  }

}

