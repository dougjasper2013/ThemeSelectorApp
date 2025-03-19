//
//  SettingsViewModel.swift
//  ThemeSelectorApp
//
//  Created by Douglas Jasper on 2025-03-19.
//

import SwiftUI

class SettingsViewModel: ObservableObject {
    @Published var theme: String = UserDefaults.standard.string(forKey: "theme_preference") ?? "day"
    @Published var backgroundColor: String = UserDefaults.standard.string(forKey: "background_color") ?? "white"

    init() {
        NotificationCenter.default.addObserver(forName: UserDefaults.didChangeNotification, object: nil, queue: .main) { _ in
            self.theme = UserDefaults.standard.string(forKey: "theme_preference") ?? "day"
            self.backgroundColor = UserDefaults.standard.string(forKey: "background_color") ?? "white"
        }
    }
}

