//
//  ViewController.swift
//  MyProfileApp
//
//  Created by Beshoy Atef on 08/07/2025.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet var nameLabel: UILabel!
    
    @IBOutlet var ageLabel: UILabel!
    
    @IBOutlet var countryLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func editButtonPressed(_ sender: Any) {
        
        let editProfileVC = storyboard?.instantiateViewController(withIdentifier: "EditProfileViewController") as? EditProfileViewController
        editProfileVC?.profileDelegate = self
        navigationController?.pushViewController(editProfileVC!, animated: true)
    }
}

extension ProfileViewController: ProfileProtocol {
    func dataBackAge(age: Int) {
        ageLabel.text = "\(age)"
    }
    
    func dataBackCountry(country: String) {
        countryLabel.text = country
    }
    
    func dataBack(name: String) {
        nameLabel.text = name
    }
    
    
}

