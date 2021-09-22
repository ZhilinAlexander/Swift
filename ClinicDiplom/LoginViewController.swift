//
//  LoginViewController.swift
//  ClinicDiplom
//
//  Created by Professor on 07/09/2021.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var eyeButtonClicked: UIButton!
    
    let email = "test1@gmail.com"
    let password = "12345678"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(self, selector: #selector(keyboardDidShow(_:)), name: UIResponder.keyboardWillShowNotification, object: nil) // нотификация, чтоо клава будет показана

        NotificationCenter.default.addObserver(self, selector: #selector(keyboardDidShow(_:)), name: UIResponder.keyboardWillHideNotification, object: nil) // нотификация, чтоо клава будет спрятана
    }
   @objc func keyboardDidShow (_ notification: Notification) {
      print("keyboardDidShow")
  //      topTitleLabelConstraint.constant = 24
    }
    
  @objc func keyboardDidHide (_ notification: Notification) {
       print("keyboardDidHide")
 //       topTitleLabelConstraint.constant = 232
        
//    }
    
  //  func eyeButtonClicked(_ sender: Any) {
  //      if eyeButton.isSelected {
           // eyeButton.isSelected = false
   //         passwordTextField.isSecureTextEntry = false
  //      } else {
         //   eyeButton.isSelected = true
    //        passwordTextField.isSecureTextEntry = true
    }
    @IBAction func eyeButtonClicked(_ sender: Any) {
              if eyeButtonClicked.isSelected {
                  eyeButtonClicked.isSelected = false
                 passwordTextField.isSecureTextEntry = false
            } else {
                 eyeButtonClicked.isSelected = true
                passwordTextField.isSecureTextEntry = true

    }

    }
    @IBAction func loginClicked(_ sender: Any) {
        if let email = emailTextField.text, let password = passwordTextField.text {
            //  сервис firebase
            Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
                if user != nil {
                    _ = MainMenuViewController()
                } else {
                    let errorMessage = error?.localizedDescription ?? "Error" // если user nil то зайзет сюда
                    let alertVC = UIAlertController(title: nil, message: errorMessage, preferredStyle: .alert) // создали алерт
                    let action = UIAlertAction(title: "Ok", style: .cancel, handler: nil) // создали кнопку ОК
                    
                    alertVC.addAction(action) // добавили кнопку к алерту
                    self.present(alertVC, animated: true, completion: nil)
    }
}
    
          
        }
    }
}
