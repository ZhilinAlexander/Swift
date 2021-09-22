//
//  RegistrationViewController.swift
//  ClinicDiplom
//
//  Created by Professor on 07/09/2021.
//

import UIKit
import Firebase
import FirebaseAuth
import FirebaseCore
import Firebase


class RegistrationViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func didTapClicked(_ sender: UIButton) {
        navigationController?.pushViewController(PlanetVetViewController(), animated: true)
    
    }
    @IBAction func registrationClicked(_ sender: Any) {
       // Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
        //    if error != nil {
         //       self.performSegue(withIdentifier: "GoToHome", sender: self) } else {
                //self.errorLabel.text = "\(String(describing: error?.localizedDescription))"} else {
           //error, check error and show message
    /*    let signUpManager = FirebaseAuthManager()
        if let email = emailTextField.text, let password = passwordTextField.text {
            signUpManager.createUser(email: email, password: password) {[weak self] (success) in
                guard let self = self else { return }
                var message: String = ""
                if (success) {
                    message = "User was sucessfully created."
                } else {
                    message = "There was an error."
                }
                let alertController = UIAlertController(title: nil, message: message, preferredStyle: .alert)
                alertController.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
                self.display(alertController: alertController)
            }
        }
    }
    func display(alertController: UIAlertController) {
        self.present(alertController, animated: true, completion: nil)
                    
                }
            }
        */

        if let email = emailTextField.text, let password = passwordTextField.text {
            //  сервис firebase
            Auth.auth().createUser(withEmail: email, password: password) { (user, error) in
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
