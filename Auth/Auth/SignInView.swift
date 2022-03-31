/*
 Abstract:
 A view that allows the user to sign in.
 */

import SwiftUI

struct SignInView: View {
    @EnvironmentObject var controller: AuthenticationController
    
    var body: some View {
        NavigationView {
            VStack {
                
                TextField(
                    "e-mail",
                    text: $controller.email)
                .disableAutocorrection(true)
                .autocapitalization(.none)
                .keyboardType(.emailAddress)
                
                NavigationLink(destination: ConfirmSignInView()) {
                    Text("Continue")
                }
                
                
            }
            .padding()
            
        }
        .navigationViewStyle(.stack)
    }
}
