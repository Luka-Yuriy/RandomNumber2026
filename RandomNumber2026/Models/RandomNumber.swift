//
//  File.swift
//  RandomNumber2026
//
//  Created by Yurii Luka on 15.07.2025.
//

struct RandomNumber {
    let minimumValue: Int
    let maximumValue: Int
    
    var getRandom: Int {
        Int.random(in: minimumValue...maximumValue)
    }
}
