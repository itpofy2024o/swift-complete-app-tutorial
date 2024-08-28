//
//  AuthViewModel.swift
//  swift-complete-app
//
//  Created by Devor Vlad on 28/8/2024.
//

import Foundation
import Firebase

class AuthFirebaseViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    @Published var currentUser: UserFirebase?
    
    init () {
        
    }
    
    func signIn(withEmail email:String, password: String) async throws {
        
    }
    
    func createNewUser(
        withEmail email: String,
        password: String,
        username: String,
        firstname: String,
        lastname: String
    ) async throws {
        
    }
    
    func singOut() {
        
    }
    
    func deleteYourAccount() {
        
    }
    
    func fetchUser() async {
        
    }
}
