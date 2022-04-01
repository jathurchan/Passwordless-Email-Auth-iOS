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

class AuthenticationViewModel: ObservableObject {

    @Published var nextStep: AuthStep?
    
    func signIn(email: String) {
        nextStep = .confirmSignIn
        print("signing  in")
    }
    
    func confirmSignIn(email: String, confirmationCode: String) {
        print("confirming sign in")
        nextStep = .done
    }
    
}
