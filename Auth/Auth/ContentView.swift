//
//  ContentView.swift
//  Auth
//
//  Created by Jathurchan Selvakumar on 31/03/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var controller = AuthenticationController()
    
    var body: some View {
        SignInView()
            .environmentObject(controller)
    }
}
