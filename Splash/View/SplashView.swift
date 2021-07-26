//
//  SplashView.swift
//  App_Habits
//
//  Created by Kaique Lopes on 26/07/21.
//

import SwiftUI

struct SplashView: View {
    
    @State var state: SplashUIState = .loading
    
    var body: some View {
        switch state {
        case .loading:
            Text("Loading")
        case .goToSignScreen:
            Text("Tela Login")
        case .goToHomeScreen:
            Text("Tela Principal")
        case .error(let msg):
            Text("Error: \(msg)")
        }
    }
}


struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView(state: .error("Error no servidor"))
    }
}


