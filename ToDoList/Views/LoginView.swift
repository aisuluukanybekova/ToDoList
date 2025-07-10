//
//  LoginView.swift
//  ToDoList
//
//  Created by Aisuluu Kanybekova  on 10/7/25.
//

import SwiftUI

struct LoginView: View {
	
	@StateObject var viewModel = LoginViewViewModel()
	
	
	var body: some View {
		NavigationView{
			VStack{
				// Header
				HeaderView(title: "To Do List",
						   subtitle: "Get things done",
						   angle: 15,
						   background: .blue)
				
				// Login Form
				Form{
					TextField("Email Address", text: $viewModel.email)
						.textFieldStyle(DefaultTextFieldStyle())
						.autocapitalization(.none)
					
					SecureField("Password", text: $viewModel.password)
						.textFieldStyle(DefaultTextFieldStyle())
					
					TLButton(
						title: "Log In",
						background: .blue
					) {
						//Attemt log in
					}
					.padding()
				}
				.offset(y: -50)
				
						// Create Account
						VStack{
							Text("New around here")
							NavigationLink("Create An Account", destination: RegisterView())
						}
						.padding(.bottom, 50)
						Spacer()
						
			}
		}
	}
}

		struct LoginView_Previews: PreviewProvider {
			static var previews: some View {
				LoginView()
			}
		}


