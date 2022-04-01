/*
 Abstract:
 A view that allows the user to confirm sign in.
 */

import SwiftUI

struct ConfirmSignInView: View {
    @State var email: String
    @State private var confirmationCode = ""
    @State private var isSignedIn = false
    
    var body: some View {
        VStack{
            
            Text(email)
            
            SecureField(
            "Confirmation Code",
            text: $confirmationCode) {
                isSignedIn = true
            }
            
            NavigationLink(isActive: $isSignedIn)   {
                HomeView()
            } label: {
                EmptyView()
            }
            
            
        }
        .padding()
        .onAppear() {
            
        }
    }
}
