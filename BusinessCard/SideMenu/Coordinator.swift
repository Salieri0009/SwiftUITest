//
//  Coordinator.swift
//  BusinessCard
//
//  Created by Maxim Nikulin on 06.01.2023.
//

import Foundation
import SwiftUI

protocol SideMenuFlowStateProtocol: ObservableObject {
    var activateLink: SideMenuLink? {get set}
}

enum SideMenuLink: Hashable, Identifiable {
    case aboutMe
    case baseInfor
    
    case sheetLinks(item: String)
    
    var navigationLink: SideMenuLink {
        switch self {
        
        default:
            return self
        }
    }
    
    var sheetItem: SideMenuLink? {
        switch self {
        case .sheetLinks:
            return self
        default:
            return nil
        }
    }
    
    var id: String {
        switch self {
        case .aboutMe:
            return "aboutMe"
        case .baseInfor:
            return "baseInfor"
        case .sheetLinks(item: let item):
            return item
        }
    }
}

struct SideMenuFlowCoordinator<State: SideMenuFlowStateProtocol, Content: View>: View {
    @ObservedObject var state: State
    let content: () -> Content
    
    private var activeLink: Binding<SideMenuLink?> {
        $state.activateLink.map(get: {$0?.navigationLink}, set: { $0 })
    }
    
    private var sheetItem: Binding<SideMenuLink?> {
        $state.activateLink.map(get: {$0?.sheetItem}, set: { $0 })
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                content()
                    .sheet(item: sheetItem, content: sheetContent)
            }
        }
    }
    
    @ViewBuilder private func sheetContent(sheetItem: SideMenuLink) -> some View {
        switch sheetItem {
        default:
            EmptyView()
        }
    }
}

extension Binding {
    func map<T>(get: @escaping(Value) -> T?, set: @escaping(T?) -> Value) -> Binding<T?> {
        Binding<T?>(
        get: {
            get(wrappedValue)
        },
        set: {
            wrappedValue = set($0)
        })
    }
}
