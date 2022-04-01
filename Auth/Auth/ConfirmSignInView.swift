/*
 Abstract:
 A view that allows the user to confirm sign in.
 */

import SwiftUI

struct ConfirmSignInView: View {
    @State var email: String
    @State private var confirmationCode = ""
    @StateObject private var viewModel = AuthenticationViewModel()
    
    var body: some View {
        VStack{
            
            Text(email)
            
            SecureField(
            "Confirmation Code",
            text: $confirmationCode) {
                viewModel.confirmSignIn(email: email, confirmationCode: confirmationCode)
            }
            
            NavigationLink(tag: .done, selection: $viewModel.nextStep)  {
                HomeView()
            } label: {
                EmptyView()
            }
        }
        .padding()
        .onAppear() {
            viewModel.signIn(email: email)
        }
    }
}
