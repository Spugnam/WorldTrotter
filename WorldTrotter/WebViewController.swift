//
//  WebViewController.swift
//  WorldTrotter
//
//  Created by quentin picard on 8/15/16.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController, UINavigationControllerDelegate, UINavigationBarDelegate, WKNavigationDelegate {
    
    var webView: WKWebView!
    // var webUrl = "http://google.com"
    
/*
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationController!.navigationBar.isHidden = false
    }
*/
    override func viewDidLoad() {
        
        super.viewDidLoad()
        /*
        // Create our preferences on how the web page should be loaded
        let preferences = WKPreferences()
        preferences.javaScriptEnabled = false
        
        // Create a configuration for our preferences
        let configuration = WKWebViewConfiguration ()
        configuration.preferences = preferences
        
        // Instantiate the web view
        webView = WKWebView(frame: view.bounds, configuration: configuration)
 
        
        let myPage = "https://google.com"
        let url = NSURL(string: myPage)!
        webView.load(NSURLRequest(url: url as URL) as URLRequest)
        
         // This syntax doesn't work. No correct webpage load found online so far
        
        //let request = NSURLRequest(URL: url)
        
        
        */
        
        /*
        if let theWebView = webView {
            // Load a web page into our web view
            let url = NSURL(string: self.webUrl)
            let urlRequest = NSURLRequest(url: url! as URL)
            theWebView.load(urlRequest as URLRequest)
            theWebView.navigationDelegate = self
            view.addSubview(theWebView)
        }
  */
    }
    
    func webView(_ webView: WKWebView, decidePolicyFor navigationResponse: WKNavigationResponse, decisionHandler: (WKNavigationResponsePolicy) -> Void) {
        decisionHandler(.allow)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
