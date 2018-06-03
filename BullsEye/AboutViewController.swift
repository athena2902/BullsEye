//
//  AboutViewController.swift
//  BullsEye
//
//  Created by Quyet Vu on 6/3/18.
//  Copyright © 2018 Quyet Vu. All rights reserved.
//

import UIKit
import WebKit

class AboutViewController: UIViewController {

    @IBOutlet weak var wkWebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let url = Bundle.main.url(forResource: "BullsEye", withExtension: "html") {
            if let htmlData = try? Data(contentsOf: url) {
                let baseURL = URL(fileURLWithPath: Bundle.main.bundlePath)
                wkWebView.load(htmlData, mimeType: "text/html", characterEncodingName: "UTF-8", baseURL: baseURL)
            }
        }
    }
    
    @IBAction func close() {
        dismiss(animated: true, completion: nil)
    }

}
