//
//  SideMenuHeaderSideMenuHeaderViewController.swift
//  BusinessCard
//
//  Created by Nikulin Maxim on 06/01/2023.
//  Copyright © 2023 Nikulin Maxim. All rights reserved.
//

import SwiftUI

struct SideMenuHeaderView: View {
    @ObservedObject var model: SideMenuHeaderViewModel
    
    var body: some View {
//        ZStack(alignment: .topTrailing) {
//            Button(action: {
//                withAnimation(.spring()) {
//                    isMenuShowing.toggle()
//                }
//            }, label: {
//                Image(systemName: "xmark")
//                    .frame(width: 32, height: 32)
//                    .foregroundColor(.white)
//                    .padding()
//            })
            
            HStack {
                VStack(alignment: .leading) {
                    Image(systemName: "globe")
                        .resizable()
                        .scaledToFit()
                        .clipped()
                        .frame(width: 64, height: 64)
                        .clipShape(Circle())
                        .padding(.bottom, 16)
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Test SideMenu")
                            .font(.system(size: 24, weight: .semibold))
                        Text("Whant create side menu")
                            .font(.system(size: 14))
                            .multilineTextAlignment(.leading)
                            .lineLimit(nil)
                            .lineSpacing(4)
                        
                    }.padding(.bottom, 32)
                    
                    
                    VStack(alignment: .leading, spacing: 12) {
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Contact Phone:")
                                .bold()
                            Text("+ 79519275317")
                        }
                        
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Mail:")
                                .bold()
                            Text(verbatim: "nikulin.maxim0009@ya.ru")
                        }
                        
                        Spacer()
                    }
                    
                    Spacer()
                }.padding()
                
                Spacer()
            }
//        }
    }
}

struct SideMenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuHeaderView(model: SideMenuHeaderViewModel())
    }
}
