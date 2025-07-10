//
//  RegisterView.swift
//  ToDoList
//
//  Created by Aisuluu Kanybekova  on 10/7/25.
//

import SwiftUI

struct RegisterView: View {
	
	@State var name = ""
	@State var email = ""
	@State var password = ""
	
    var body: some View {
		VStack{
			// Header
			HeaderView(title: "Register",
					   subtitle: "Start organizing tods",
					   angle: -15,
					   background: .orange)
			
			Form{
				TextField("Full Name", text: $name)
					.textFieldStyle(DefaultTextFieldStyle())
					.autocorrectionDisabled()
				
				TextField("Email Address", text: $email)
					.textFieldStyle(DefaultTextFieldStyle())
					.autocapitalization(.none)
					.autocorrectionDisabled()
				
				SecureField("Password", text: $password)
					.textFieldStyle(DefaultTextFieldStyle())
				
				TLButton(
					title: "Create Account",
					background: .green
				) {
					//Attemt registration
				}
				padding()
			}
			.offset(y: -50)
			Spacer()
		}
    }
}

#Preview {
    RegisterView()
}
