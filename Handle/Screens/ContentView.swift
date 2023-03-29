//
//  ContentView.swift
//  Handle
//
//  Created by  Oleksandr Polishchuk on 23.03.2023.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    
    /// Description
    var body: some View {
        ZStack {
            if isOnboardingViewActive {
                OnboardingView()
            } else {
                HomeView()
            }
        }
        
    }
}
        


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
