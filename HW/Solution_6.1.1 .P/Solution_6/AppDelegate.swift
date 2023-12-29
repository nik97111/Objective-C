//
//  AppDelegate.swift
//  Solution_6
//
//  Created by Николай Чупреев on 27.12.2023.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
         // Получение выбранной темы из UserDefaults
        if let savedTheme = UserDefaults.standard.string(forKey: "selectedTheme") {
            if let selectedTheme = AppTheme(rawValue: savedTheme) {
                // Применение выбранной темы к приложению
                ThemeManager.applyTheme(selectedTheme)
            }
        }
                
                
                return true
            }
            
            // MARK: UISceneSession Lifecycle
            
            func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
                // Called when a new scene session is being created.
                // Use this method to select a configuration to create the new scene with.
                return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
            }
            
            func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
                // Called when the user discards a scene session.
                // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
                // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
            }
            
            
        }
        
    