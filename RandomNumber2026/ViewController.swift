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

    @IBAction func getResultButtonDidTapped() {
        let minimumNumber = Int(minimumValueLabel.text ?? "") ?? 0
        let maximumNumber = Int(maximumValueLabel.text ?? "") ?? 0
        
        randomNumberLabel.text = Int.random(in: minimumNumber...maximumNumber).formatted()
    }
}

