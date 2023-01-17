//
//  SideMenuListSideMenuListViewModel.swift
//  BusinessCard
//
//  Created by Nikulin Maxim on 06/01/2023.
//  Copyright © 2023 Nikulin Maxim. All rights reserved.
//

import Foundation
import SwiftUI

enum SideMenuListItem: Hashable {
    case aboutMe
    case baseInfor
    
    func getTitle() -> String {
        switch self {
        case .aboutMe:
            return "About Me"
        case .baseInfor:
            return "Base Infor"
        }
    }
    
    func getIconString() -> String {
        switch self {
        case .aboutMe:
            return "list.bullet"
        case .baseInfor:
            return "person"
        }
    }
}

class SideMenuListViewModel: ObservableObject {
	var output: SideMenuListViewOutput!
    
    var item: SideMenuListItem
    
    init(item: SideMenuListItem) {
        self.item = item
    }
    
    func selectItem(isActive: Binding<Bool>) -> any View {
        switch item {
        case .aboutMe:
            return NavigationLink("", destination: AboutMeModuleConfigurator().configure(output: nil), isActive: isActive)
        case .baseInfor:
            return NavigationLink("", destination: SecodView(), isActive: isActive)
        }
    }
}

extension SideMenuListViewModel: SideMenuListViewInput {
    
}
