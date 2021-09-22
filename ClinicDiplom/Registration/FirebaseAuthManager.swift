//
//  AuthViewController.swift
//  ClinicDiplom
//
//  Created by Professor on 12/09/2021.
//

import UIKit
import FirebaseAuth

class FirebaseAuthManager {

    //func createUser(email: String, password: String, completionBlock: @escaping (_ success: Bool) -> Void) {
    //     Auth.auth().createUser(withEmail: email, password: password) {(authResult, error) in
     //          if let user = authResult?.user {
      //             print(user)
     //              completionBlock(true)
     //          } else {
      //             completionBlock(false)
   // func login(credential: AuthCredential, completionBlock: @escaping (_ success: Bool) -> Void) {
   //     Auth.auth().signIn(with: credential, completion: { (firebaseUser, error) in
   //         print("user")
      //      completionBlock(error == nil)
  //  func login(credential: AuthCredential, completionBlock: @escaping (_ success: Bool) -> Void) {
   //     Auth.auth().signIn(with: credential, completion: { (firebaseUser, error) in
    //        print(firebaseUser)
   //         completionBlock(error == nil)
   //     })
 //   }
//};)


    func createUser(email: String, password: String, completionBlock: @escaping (_ success: Bool) -> Void) {
        Auth.auth().createUser(withEmail: email, password: password) {(authResult, error) in
            if let user = authResult?.user {
                print(user)
                completionBlock(true)
            } else {
                completionBlock(true)
            }
        }
    }

    func signIn(email: String, pass: String, completionBlock: @escaping (_ success: Bool) -> Void) {
        Auth.auth().signIn(withEmail: email, password: pass) { (result, error) in
            if let error = error, let _ = AuthErrorCode(rawValue: error._code) {
                completionBlock(false)
            } else {
                print(result!)
                completionBlock(true)
            }
        }
    }


}
