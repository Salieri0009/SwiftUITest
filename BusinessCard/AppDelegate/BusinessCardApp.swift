//
//  BusinessCardApp.swift
//  BusinessCard
//
//  Created by Maxim Nikulin on 04.12.2022.
//

import SwiftUI

@main
struct BusinessCardApp: App {
    @StateObject private var notificationCenter = NotificationCenter()
    @UIApplicationDelegateAdaptor private var appDelegate: AppDelegate
    
    var body: some Scene {
        WindowGroup {
            RootView(banerData: notificationCenter.banner)
        }
    }
}

struct RootView: View {
    @ObservedObject var banerData: BannerDataModel
    @State private var isMenuShowing = false
    
    init(banerData: BannerDataModel) {
        self.banerData = banerData
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                if isMenuShowing {
                    SideMenuRootModuleConfigurator().configure(isMenuShowing: $isMenuShowing, output: nil)
                }
                ContentModuleConfigurator().configure(output: nil)
                    .cornerRadius(isMenuShowing ? 20: 10)
                    .offset(x: isMenuShowing ? 300: 0, y: isMenuShowing ? 44: 0)
                    .scaleEffect(isMenuShowing ? 0.8: 1)
                    .navigationBarItems(leading: Button(action: {
                        withAnimation(.spring()) {
                            isMenuShowing.toggle()
                        }
                    }, label: {
                        Image(systemName: "list.bullet")
                            .foregroundColor(.black)
                    }))
                    .navigationTitle("Home")
            }
            .onAppear {
                isMenuShowing = false
            }
            .preferredColorScheme(.light)
            .banner(data: $banerData.bannerData, show: $banerData.showBanner)
        }
    }
}

class BannerDataModel: ObservableObject {
    @Published var bannerData: BannerModifier.BannerData = BannerModifier.BannerData(title: "", detail: "", type: .Info)
    @Published var showBanner: Bool = false
}

class NotificationCenter: NSObject, ObservableObject {
    @Published var dumbData: UNNotificationResponse?
    
    @ObservedObject var banner = BannerDataModel()
    
    override init() {
        super.init()
        UNUserNotificationCenter.current().delegate = self
    }
}

extension NotificationCenter: UNUserNotificationCenterDelegate {
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        
        banner.bannerData.title = notification.request.content.title
        banner.bannerData.detail = notification.request.content.body
        banner.showBanner = true
        
        completionHandler([.sound, .badge])
    }
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        dumbData = response
        completionHandler()
    }
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, openSettingsFor notification: UNNotification?) { }
}
