//
//  MixedViewController.swift
//  WebExample
//
//  Created by Shridhar Damale on 9/30/20.
//  Copyright © 2020 IBM. All rights reserved.
//

import UIKit
import WebKit

class MixedViewController: UIViewController {

    @IBOutlet var segmentControl: UISegmentedControl!
    @IBOutlet var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let url = Bundle.main.url(forResource: "tabWithHash", withExtension: "html", subdirectory: "mobile_domcap")!
        webView.loadFileURL(url, allowingReadAccessTo: url)
        let request = URLRequest(url: url)
        webView.load(request)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        webView.evaluateJavaScript("document.getElementById('btn_London').click()", completionHandler: nil)
    }

    @IBAction func segmentControlValueChanged(_ sender: Any) {
        if( self.segmentControl.selectedSegmentIndex == 0 )
        {
            webView.evaluateJavaScript("document.getElementById('btn_London').click()", completionHandler: nil)
        }
        else if( self.segmentControl.selectedSegmentIndex == 1 )
        {
            webView.evaluateJavaScript("document.getElementById('btn_Paris').click()", completionHandler: nil)
        }
        else if( self.segmentControl.selectedSegmentIndex == 2 )
        {
            webView.evaluateJavaScript("document.getElementById('btn_Tokyo').click()", completionHandler: nil)
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
