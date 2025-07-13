//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by Aisuluu Kanybekova  on 10/7/25.
//
import FirebaseAuth
import Foundation

class LoginViewViewModel: ObservableObject {
	
	@Published var email = ""
	@Published var password = ""
	@Published var errorMessage = ""
	
	init() {
			// Здесь только инициализация, без функций
		}
		
		func login() {
			guard validate() else{
				return
			}
			// Try log in
			Auth.auth().signIn(withEmail: email, password: password)
		}
		
		private func validate() -> Bool {
			errorMessage = ""
			guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
				  !password.trimmingCharacters(in: .whitespaces).isEmpty else {
				
				errorMessage = "Please fill in all fields."
				
				return false
			}
			guard email.contains( "@" ) && email.contains( "." ) else {
				errorMessage = "Please enter valid email."
				return false
			}
			return true
		}
	}

