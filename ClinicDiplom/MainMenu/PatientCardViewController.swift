//
//  ReceptionViewController.swift
//  ClinicDiplom
//
//  Created by Professor on 15/09/2021.
//

import UIKit

class PatientCardViewController: UIViewController {
      //dataPicker для даты в формате dd.MM.yyyy
    @IBOutlet weak var dateField: UITextField!
    var datePicker = UIDatePicker()
    // dataPicker время
    @IBOutlet weak var timeField: UITextField!
    var timePicker = UIDatePicker()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     //dataPicker для даты в формате dd.MM.yyyy
        dateField.inputView = datePicker
        datePicker.datePickerMode = .date
        
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(doneAction))
        let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
      
        toolbar.setItems([flexSpace, doneButton], animated: true)
        dateField.inputAccessoryView = toolbar
        
    // timePicker
        timeField.inputView = timePicker
        timePicker.datePickerMode = .time
        
        let toolbar2 = UIToolbar()
        toolbar2.sizeToFit()
        let doneButton2 = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(doneAction2))
        let flexSpace2 = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        
        toolbar2.setItems([flexSpace2, doneButton2], animated: true)
        timeField.inputAccessoryView = toolbar2
        
    }
    //dataPicker для даты в формате dd.MM.yyyy
    @objc func doneAction() {
        getDateFromPicker()
        view.endEditing(true)
        
        }
    // timePicker
    @objc func doneAction2() {
        getTimeFromPicker()
        view.endEditing(true)
    }
    //dataPicker для даты в формате dd.MM.yyyy
    func getDateFromPicker() {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy"
        dateField.text = formatter.string(from: datePicker.date)
       
        }
    // timePicker
    func getTimeFromPicker() {
        let formatter2 = DateFormatter()
        formatter2.dateFormat = "hh.mm"
        timeField.text = formatter2.string(from: timePicker.date)
    }
    @IBAction func serviceTextField(_ sender: Any) {
        func serviceTextFieldShouldReturn(_ textField: UITextField) -> Bool {
                         // Откинуть клавиатуру
             textField.resignFirstResponder()
                         // Распечатать значение в текстовом поле
             //   print(servicetextField.text)
                return true;

    }
    
}
    @IBAction func backClicked(_ sender: Any) {
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "< Back", style: .plain, target: self, action: #selector(backAction))

           // Do any additional setup if required.
       }

    @objc func backAction(){
           //print("Back Button Clicked")
           dismiss(animated: true, completion: nil)
       }
    }

