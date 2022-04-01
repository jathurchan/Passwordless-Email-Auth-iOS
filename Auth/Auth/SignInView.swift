/*
 Abstract:
 A view that allows the user to sign in.
 */

import SwiftUI

struct SignInView: View {
    @State private var email = ""
    @State private var shouldConfirmSignIn = false
    
    var body: some View {
        NavigationView {
            VStack {
                
                TextField(
                    "e-mail",
                    text: $email)
                .disableAutocorrection(true)
                .autocapitalization(.none)
                .keyboardType(.emailAddress)
                
                Button {
                    shouldConfirmSignIn = true
                } label: {
                    Text("Continue")
                }
                
                NavigationLink(isActive: $shouldConfirmSignIn) {
                    ConfirmSignInView(email: email)
                } label: {
                    EmptyView()
                }
                
                
            }
            .padding()
            
        }
        .navigationViewStyle(.stack)
    }
}
