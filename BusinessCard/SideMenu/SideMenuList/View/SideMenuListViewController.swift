//
//  SideMenuListSideMenuListViewController.swift
//  BusinessCard
//
//  Created by Nikulin Maxim on 06/01/2023.
//  Copyright © 2023 Nikulin Maxim. All rights reserved.
//

import SwiftUI

struct SideMenuListView: View {
    @ObservedObject var model: SideMenuListViewModel
    @State var isItemTapped = false
    
    var body: some View {
        
        HStack(spacing: 16) {
            Image(systemName: model.item.getIconString())
                .frame(width: 24, height: 24)
            
            Text(model.item.getTitle())
                .font(.system(size: 15, weight: .semibold))
            
            Spacer()
        }
        .gesture(TapGesture()
            .onEnded {
                isItemTapped.toggle()
            })
        .padding()
        AnyView(model.selectItem(isActive: $isItemTapped))
    }
}

struct SideMenuListView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuListView(model: SideMenuListViewModel(item: SideMenuListItem.aboutMe))
    }
}
