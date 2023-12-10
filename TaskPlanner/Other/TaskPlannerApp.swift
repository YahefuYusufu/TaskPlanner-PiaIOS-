//
//  TaskPlannerApp.swift
//  TaskPlanner
//
//  Created by yusufyakuf on 2023-11-26.
//

import SwiftUI
import FirebaseCore
import FirebaseAppCheck


class AppDelegate: NSObject, UIApplicationDelegate {
   
   func application(_ application: UIApplication,
                    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
//      let providerFactory = AppCheckDebugProviderFactory()
//      AppCheck.setAppCheckProviderFactory(providerFactory)
      
      
      FirebaseApp.configure()
      
      
//      requestDeviceCheckToken()
      return true
   }
   
//   func requestDeviceCheckToken() {
//      guard let firebaseApp = FirebaseApp.app() else {
//         return
//      }
//      
//      DeviceCheckProvider(app: firebaseApp)?.getToken { token, error in
//         if let token = token {
//            print("DeviceCheck token: \(token.token), expiration date: \(token.expirationDate)")
//         }
//         
//         if let error = error {
//            print("DeviceCheck error: \((error as NSError).userInfo)")
//         }
//      }
//   }
   
}
@main
struct TaskPlannerApp: App {
   // register app delegate for Firebase setup
   @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
   

    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
