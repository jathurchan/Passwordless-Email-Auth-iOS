/*
 Abstract:
 A view that allows the user to confirm sign in.
 */

import SwiftUI

struct ConfirmSignInView: View {
    @EnvironmentObject var controller: AuthenticationController
    
    var body: some View {
        VStack{
            
            Text(controller.email)
            
            SecureField(
            "Confirmation Code",
            text: $controller.confirmationCode)
            
            NavigationLink(destination: HomeView()) {
                Text("Confirm")
            }
            
            
        }
        .padding()
        .onAppear() {
            controller.signIn()
        }
    }
}

struct ConfirmSignInView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmSignInView()
    }
}
