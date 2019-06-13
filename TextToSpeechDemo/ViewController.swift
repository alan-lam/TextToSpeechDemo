//
//  ViewController.swift
//  TextToSpeechDemo
//
//  Created by Alan Lam on 6/9/19.
//  Copyright © 2019 ntrllog. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    @IBOutlet weak var rateSlider: UISlider!
    
    let audio = AVSpeechSynthesizer()
    var convertText = AVSpeechUtterance(string: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func readText(_ sender: UIButton) {
        convertText = AVSpeechUtterance(string: textView.text)
        convertText.rate = rateSlider.value
        audio.speak(convertText)
    }
    
}

