//
//  ViewController.swift
//  HelixAcademy
//
//  Created by Saranya ramamoorthy on 14/01/20.
//  Copyright © 2020 Saranya ramamoorthy. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController,WKNavigationDelegate {

    @IBOutlet weak var webview: WKWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL (string: "https://helixacademy.ca/")
        let requestObj = URLRequest(url: url!)
        webview.navigationDelegate = self
        webview.load(requestObj)
        webview.allowsBackForwardNavigationGestures = true
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        webview.frame.size.height = 1
        webView.frame.size = webView.sizeThatFits(CGSize.zero)
    }


}

