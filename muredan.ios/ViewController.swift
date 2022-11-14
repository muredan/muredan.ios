//
//  ViewController.swift
//  muredan.ios
//
//  Created by Dan Muresan on 01.11.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view. 3
    }


}

enum Environment: String { // 1
    case debugDevelopment = "Debug Development"
    case releaseDevelopment = "Release Development"

    case debugProduction = "Debug Production"
    case releaseProduction = "Release Production"
}

class BuildConfiguration { // 2
    static let shared = BuildConfiguration()

    var environment: Environment

    var baseURL: String { // 1
        switch environment {
        case .debugDevelopment, .releaseDevelopment:
            return "https://dev.example.com/api"
        case .debugProduction, .releaseProduction:
            return "https://example.com/api"
        }
    }

    init() {
        let currentConfiguration = Bundle.main.object(forInfoDictionaryKey: "Configuration") as! String

        environment = Environment(rawValue: currentConfiguration)!
        
        print(environment)
    }
}
