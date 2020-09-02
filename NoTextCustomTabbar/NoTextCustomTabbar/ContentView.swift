//
//  ContentView.swift
//  NoTextCustomTabbar
//
//  Created by MB on 02/09/2020.
//  Copyright © 2020 MB. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewRouter = ViewRouter()
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                if self.viewRouter.currentView == "first" {
                    Text("First view")
                        .font(.title)
                        .foregroundColor(.blue)
                } else if self.viewRouter.currentView == "second" {
                    Text("Second view")
                        .font(.title)
                        .foregroundColor(.green)
                }
                Spacer()
                
                HStack {
                    Image(systemName: "star.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(20)
                        .frame(width: geometry.size.width/3, height: 75)
                        .foregroundColor(self.viewRouter.currentView == "first" ? .blue : .gray)
                        .onTapGesture {
                            self.viewRouter.currentView = "first"
                    }
                    
                    Image(systemName: "circle.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(20)
                        .frame(width: geometry.size.width/3, height: 75)
                        .foregroundColor(self.viewRouter.currentView == "second" ? .green : .gray)
                        .onTapGesture {
                            self.viewRouter.currentView = "second"
                    }
                    
                }
                .frame(width: geometry.size.width, height: geometry.size.height/10)
                .background(Color.white.shadow(radius: 2))
                
            }.edgesIgnoringSafeArea(.bottom)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
