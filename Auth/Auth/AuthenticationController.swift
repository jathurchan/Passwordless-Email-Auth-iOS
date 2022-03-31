/*
 Abstract:
 An object that manages the signing in.
 */

import Foundation

enum AuthStep {
    case signIn
    case confirmSignIn
    case done
}

class AuthenticationController: ObservableObject {
    
    @Published var email = ""
    @Published var confirmationCode = ""
    
    func showMessagePrompt(_ str: String) {
        print(str)
    }
    
    func signIn() {

    }
    
    func confirmSignIn() {
        
    }
    
}
