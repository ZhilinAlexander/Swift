//
//  PatientCardViewController.swift
//  ClinicDiplom
//
//  Created by Professor on 14/09/2021.
//

import UIKit

class PatientCardViewController: UIViewController {
    
    //  DataPicker для Даты:

    @IBOutlet weak var dateField: UITextField!
    let datePicker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dateField.inputView = datePicker
        datePicker.datePickerMode = .date
        
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(doneAction))
        let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        
        toolbar.setItems([flexSpace,doneButton], animated: true)
        
        dateField.inputAccessoryView = toolbar
    }
    @objc func doneAction() {
        getDateFromPicker()
        view.endEditing(true)
    }
    func getDateFromPicker() {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yy" // ввод даты в формате dd.MM.yy
        dateField.text = formatter.string(from:  datePicker.date)
    }
   

}
