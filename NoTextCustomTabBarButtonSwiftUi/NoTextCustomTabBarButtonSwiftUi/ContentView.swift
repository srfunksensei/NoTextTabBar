//
//  ContentView.swift
//  NoTextCustomTabBarButtonSwiftUi
//
//  Created by MB on 09/09/2020.
//  Copyright © 2020 MB. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var index = 0
    
    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                if self.index == 0 {
                    Color.blue
                } else {
                    Color.yellow
                }
            }
            
            CustomTabs(index: self.$index)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CustomTabs: View {
    
    @Binding var index: Int
    
    var body: some View {
        HStack {
            Button(action: {
                self.index = 0
            }) {
                Image("first")
            }.foregroundColor(Color.black.opacity(self.index == 0 ? 1 : 0.2))
            
            Spacer(minLength: 0)
            
            Button(action: {
                self.index = 1
            }) {
                Image("second")
            }.foregroundColor(Color.black.opacity(self.index == 1 ? 1 : 0.2))
        }
        .padding(.horizontal, 95)
        .padding(.vertical, 15)
        .background(Color.white)
    }
}
