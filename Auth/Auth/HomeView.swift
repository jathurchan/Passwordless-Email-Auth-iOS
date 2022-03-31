/*
 Abstract:
 The view that shows up when the user is signed in.
 */

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var controller: AuthenticationController
    
    var body: some View {
        Text("Hello, World!")
    }
}
