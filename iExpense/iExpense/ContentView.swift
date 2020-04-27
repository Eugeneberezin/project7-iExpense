//
//  ContentView.swift
//  iExpense
//
//  Created by Eugene Berezin on 4/26/20.
//  Copyright © 2020 Eugene Berezin. All rights reserved.
//

import SwiftUI

struct User: Codable {
    var firstmane: String
    var lastName: String
}

struct ContentView: View {
    @State private var user  = User(firstmane: "Eugene", lastName: "Berezin")
 
    var body: some View {
        Button("Save User") {
            let encoder = JSONEncoder()
            if let data = try? encoder.encode(self.user) {
                UserDefaults.standard.set(data, forKey: "UserData")
            }
        }
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
