//
//  ContentView.swift
//  ThemeSelectorApp
//
//  Created by Douglas Jasper on 2025-03-19.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var settings = SettingsViewModel()
    
    // Helper function to get Color from string
    func colorFromString(_ name: String) -> Color {
        switch name.lowercased() {
        case "blue": return .blue
        case "green": return .green
        case "red": return .red
        default: return .white
        }
    }
    
    var body: some View {
        ZStack {
            colorFromString(settings.backgroundColor) // Set background color
                .edgesIgnoringSafeArea(.all)
            
            Text("Hello, SwiftUI!")
                .font(.largeTitle)
                .foregroundColor(settings.theme == "night" ? .white : .black) // Adjust text color based on theme
                .padding()
        }
        .preferredColorScheme(settings.theme == "night" ? .dark : .light) // Switch themes
    }
}

#Preview {
    ContentView()
}
