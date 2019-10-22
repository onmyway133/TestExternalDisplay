//
//  ViewController.swift
//  TestWebView
//
//  Created by khoa on 22/10/2019.
//  Copyright © 2019 Khoa Pham. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet var webView: WKWebView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        webView.load(URLRequest(url: URL(string: "https://google.com")!))

    }


}

