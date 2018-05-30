//
//  ViewController.swift
//  BullsEye
//
//  Created by Quyet Vu on 4/25/18.
//  Copyright © 2018 Quyet Vu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var currentValue :Int = 0;
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentValue = lroundf(slider.value)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func showAlert() {
        let message = "The value of slider is: \(currentValue)"
        let alert = UIAlertController(title: "Hello world", message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        currentValue = lroundf(slider.value)
        print(currentValue)
    }
}

