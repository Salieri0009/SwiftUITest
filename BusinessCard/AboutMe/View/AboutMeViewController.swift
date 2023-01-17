//
//  AboutMeAboutMeViewController.swift
//  BusinessCard
//
//  Created by Nikulin Maxim on 06/01/2023.
//  Copyright © 2023 Nikulin Maxim. All rights reserved.
//

import SwiftUI

struct AboutMeView: View {
    @ObservedObject var model: AboutMeViewModel
    
    var body: some View {
        NavigationView {
            Text("About Me View")
        }
    }
}

struct AboutMeView_Previews: PreviewProvider {
    static var previews: some View {
        AboutMeView(model: AboutMeViewModel())
    }
}
