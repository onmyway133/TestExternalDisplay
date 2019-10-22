//
//  OtherViewController.swift
//  TestWebView
//
//  Created by khoa on 22/10/2019.
//  Copyright © 2019 Khoa Pham. All rights reserved.
//

import UIKit
import WebKit

final class OtherViewController: UIViewController {

    @IBOutlet var myWebView: WKWebView!

    @IBOutlet var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.brown

         myWebView.load(URLRequest(url: URL(string: "https://bing.com")!))
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        becomeFirstResponder()
        textField.becomeFirstResponder()
    }
}
