//
//  ContentView.swift
//  iExpense
//
//  Created by Eugene Berezin on 4/26/20.
//  Copyright © 2020 Eugene Berezin. All rights reserved.
//

import SwiftUI

struct SecondView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var name: String
    var body: some View {
        Button("Dismiss") {
            self.presentationMode.wrappedValue.dismiss()
        }
    }
}
struct ContentView: View {
   @State private var showingSheet = false
    var body: some View {
        Button("SHow wsheet") {
            self.showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet) {
            //
            SecondView(name: "Bella")
        }
    
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
