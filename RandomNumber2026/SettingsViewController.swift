//
//  SettingsViewController.swift
//  RandomNumber2026
//
//  Created by Yurii Luka on 08.07.2025.
//

import UIKit

class SettingsViewController: ViewController {
    // MARK: - IBOutlets
    @IBOutlet var minimumValueTF: UITextField!
    @IBOutlet var maximumValueTF: UITextField!
    
    //MARK: Propherties
    var minimusValue: String!
    var maximumValue: String!
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        minimumValueTF.text = minimusValue
        maximumValueTF.text = maximumValue
    }
    
    // MARK: IBActions
    @IBAction func cancelButtonDidTapped() {
        dismiss(animated: true)
    }
    
}
