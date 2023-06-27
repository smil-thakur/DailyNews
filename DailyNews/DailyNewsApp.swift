//
//  DailyNewsApp.swift
//  DailyNews
//
//  Created by Smil on 23/06/23.
//

import SwiftUI
import FirebaseCore


//MARK: - initializing firebase
class AppDelegate:NSObject ,UIApplicationDelegate{
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true;
    }
}

@main
struct DailyNewsApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
