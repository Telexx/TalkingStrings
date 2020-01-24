//
//  Talk.swift
//  Darter
//
//  Created by Alec Henderson on 24/01/2020.
//  Copyright © 2020 Alec Henderson. All rights reserved.
//

import Foundation
import AVFoundation

extension String{
    func Talk(rate: Float, voice:String){
    let utterance = AVSpeechUtterance(string: self)
     utterance.voice = AVSpeechSynthesisVoice(language: voice)
     utterance.rate = rate

     let synthesizer = AVSpeechSynthesizer()
     synthesizer.speak(utterance)
    }
}
