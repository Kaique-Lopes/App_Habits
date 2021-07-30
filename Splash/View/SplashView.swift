//
//  SplashView.swift
//  App_Habits
//
//  Created by Kaique Lopes on 26/07/21.
//

import SwiftUI

struct SplashView: View {
    
    @State var state: SplashUIState = .loading
    @State var showAlert = true
    
    var body: some View {
        switch state {
        case .loading:
            loadingView()
        case .goToSignScreen:
            Text("Tela Login")
        case .goToHomeScreen:
            Text("Tela Principal")
        case .error(let msg):
            loadingView(error: msg)
        }
    }
}

extension SplashView {
    func loadingView(error: String? = nil) -> some View {
        ZStack {
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding(20)
                .background(Color.white)
                .ignoresSafeArea()
            
            if let error = error {
                Text("")
                    .alert(isPresented: .constant(true)) {
                        Alert(title: Text("Habit"), message: Text(error), dismissButton: .default(Text("OK")) {
                        })
                    }
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView(state: .error("err"))
    }
}


