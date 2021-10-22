//
//  WebSiteView.swift
//  Challenge7UIKit
//
//  Created by Shepherd on 10/19/21.
//

import SwiftUI
import WebKit

/*
 Implements the view needed to display a website
 */
struct WebSiteView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> WKWebView {
        
        let webConfiguration = WKWebViewConfiguration()
        
        // Create the WKWebView object with our configuration here with no frame
        let webView = WKWebView(frame: .zero, configuration: webConfiguration)
        
        // Setup our URL for the video we want from YouTube here
        let youTubeUrl = "https://www.youtube.com/watch?v=exM1uajp--A"
        
        // Make the video display full screened by replacing watch with watch_popup here
        let formattedUrl = youTubeUrl.replacingOccurrences(of: "watch", with: "watch_popup")
        
        // Use this line, if you want the user to acccess the full website
//        let formattedUrl = youTubeUrl
        
        // Create a new URL object with our YouTube video
        let myURL = URL(string: formattedUrl)
        
        // Make our HTTP GET request for the URL supplied
        let myRequest = URLRequest(url: myURL!)
        
        // Load the returned HTML/ CSS/ Website content
        webView.load(myRequest)
        
        // Return the webView here to the rest of our SwiftUI
        return webView
        
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        //
    }
    
}

struct WebSiteView_Previews: PreviewProvider {
    static var previews: some View {
        WebSiteView()
    }
}
