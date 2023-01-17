//
//  SideMenuRootSideMenuRootViewModel.swift
//  BusinessCard
//
//  Created by Nikulin Maxim on 06/01/2023.
//  Copyright © 2023 Nikulin Maxim. All rights reserved.
//

import Foundation
import SwiftUI

class SideMenuRootViewModel: ObservableObject {    
	var output: SideMenuRootViewOutput!
    
    @Published var listOfItems: [SideMenuListItem] = [SideMenuListItem.baseInfor,
                                                      SideMenuListItem.aboutMe]
}

extension SideMenuRootViewModel: SideMenuRootViewInput {

}
