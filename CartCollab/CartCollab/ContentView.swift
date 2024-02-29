//
//  ContentView.swift
//  CartCollab
//
//  Created by Prashant Rana on 2/29/24.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        BottomBar(
            AnyView(CartListView()),
            AnyView(SignInView())
        )
        .environmentObject((AppVariables()))
    }
}

class AppVariables: ObservableObject {
    @Published var selectedTab: Int = 0
}
#Preview {
    ContentView()
}

