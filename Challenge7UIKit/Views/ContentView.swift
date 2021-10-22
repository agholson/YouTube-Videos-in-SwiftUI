//
//  ContentView.swift
//  Challenge7UIKit
//
//  Created by Shepherd on 10/19/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("A Beautiful View")
                .padding()
                .font(.title)
            
            // MARK: - Call Website View
            WebSiteView()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
