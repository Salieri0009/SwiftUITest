//
//  ContentView.swift
//  BusinessCard
//
//  Created by Maxim Nikulin on 04.12.2022.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var model: SceneModel
    
    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text(model.textText)
                Button("test", action: {
                    model.output.changeTestText()
                })
//                NavigationLink {
//                    SecodView()
//                } label: {
//                    Text("test VC")
//                }
                
            }
            .padding()
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(model: SceneModel())
    }
}
