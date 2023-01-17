//
//  SideMenuRootSideMenuRootViewController.swift
//  BusinessCard
//
//  Created by Nikulin Maxim on 06/01/2023.
//  Copyright © 2023 Nikulin Maxim. All rights reserved.
//

import SwiftUI

struct SideMenuRootView: View {
    @ObservedObject var model: SideMenuRootViewModel
    @Binding var isMenuShowing: Bool
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .top, endPoint: .bottom)
            .shadow(radius: 5)
            .ignoresSafeArea()
        
        ZStack(alignment: .topTrailing) {
            ScrollView(.vertical) {
                ZStack {
                    VStack(alignment: .leading) {
                        SideMenuHeaderModuleConfigurator().configure(output: model.output as? SideMenuHeaderModuleOutput)
                            .foregroundColor(.white)
                        
                        ForEach(model.listOfItems, id: \.self) { item in
                            SideMenuListModuleConfigurator().configure(item: item, output: model.output as? SideMenuListModuleOutput)
                                .foregroundColor(.white)
                        }
                        
                        Spacer()
                    }
                }.padding()
                
            }
            
            Button(action: {
                withAnimation(.spring()) {
                    isMenuShowing.toggle()
                }
            }, label: {
                Image(systemName: "xmark")
                    .frame(width: 32, height: 32)
                    .foregroundColor(.white)
                    .padding()
            })
        }
        .navigationBarHidden(true)
    }
}

struct SideMenuRootView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuRootView(model: SideMenuRootViewModel(), isMenuShowing: .constant(false))
    }
}
