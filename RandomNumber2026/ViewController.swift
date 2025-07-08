//
//  ViewController.swift
//  RandomNumber2026
//
//  Created by Yurii Luka on 07.07.2025.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - IBOutlets
    @IBOutlet var minimumValueLabel: UILabel!
    @IBOutlet var maximumValueLabel: UILabel!
    @IBOutlet var randomNumberLabel: UILabel!
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.minimusValue = minimumValueLabel.text
        settingsVC.maximumValue = maximumValueLabel.text
    }

    
    // MARK: IBActions
    @IBAction func getResultButtonDidTapped() {
        let minimumNumber = Int(minimumValueLabel.text ?? "") ?? 0
        let maximumNumber = Int(maximumValueLabel.text ?? "") ?? 100
        
        randomNumberLabel.text = Int.random(in: minimumNumber...maximumNumber).formatted()
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let settingsVC = segue.source as? SettingsViewController else { return }
        minimumValueLabel.text = settingsVC.minimumValueTF.text
        maximumValueLabel.text = settingsVC.maximumValueTF.text
    }
}

