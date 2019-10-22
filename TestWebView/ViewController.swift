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
    @IBOutlet var textField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        webView.load(URLRequest(url: URL(string: "https://bing.com")!))
        textField.addTarget(self, action: #selector(textFieldChange(_:)), for: .editingChanged)

    }

    @objc func textFieldChange(_ tf: UITextField) {
        let string = tf.text ?? ""
        let text = "document.getElementsByTagName('input')[2].value = '\(string)';"
        Manager.externalWebView?.evaluateJavaScript(text, completionHandler: { result, error in
            print(result)
            print(error)
        })
    }
}

class Manager {
    static var externalWebView: WKWebView?
}

