//
//  HapticsFeedback.swift
//  LockLine
//
//  Created by Lucas Claro on 30/06/21.
//

import UIKit

let generatorLight = UIImpactFeedbackGenerator(style: .light)

let generatorHeavy = UIImpactFeedbackGenerator(style: .heavy)

func vibrateLight() {
    generatorLight.impactOccurred(intensity: 0.5)
}

func vibrateHeavy() {
    generatorHeavy.impactOccurred(intensity: 0.5)
}
