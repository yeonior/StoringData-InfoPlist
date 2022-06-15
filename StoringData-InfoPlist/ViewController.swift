//
//  ViewController.swift
//  StoringData-InfoPlist
//
//  Created by ruslan on 22.10.2021.
//

import UIKit

class ViewController: UIViewController {
    
    let label: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: 200, height: 50)
        label.textAlignment = .center
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.center = view.center
        view.addSubview(label)
        
        let appVersion = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "-"
        label.text = "App Version: v\(appVersion)"
    }
}

