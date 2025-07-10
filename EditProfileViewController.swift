//
//  EditProfileViewController.swift
//  MyProfileApp
//
//  Created by Beshoy Atef on 08/07/2025.
//

import UIKit
protocol ProfileProtocol {
    func dataBack(name: String)
    func dataBackAge(age: Int)
    func dataBackCountry (country: String)
}
class EditProfileViewController: UIViewController {

    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var ageTextField: UITextField!
    @IBOutlet var countryTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
    }

    @IBAction func saveButtonPressed(_ sender: Any) {
        
        if let name = nameTextField.text {
            profileDelegate?.dataBack(name: name)
        }

        if let age = ageTextField.text, let number = Int(age) {
            profileDelegate?.dataBackAge(age: number)
        }
        
        if let country = countryTF.text {
            profileDelegate?.dataBackCountry(country: country)
        }
     
        navigationController?.popViewController(animated: true)
    }
    var profileDelegate: ProfileProtocol?
}
