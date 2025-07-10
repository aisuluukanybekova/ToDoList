//
//  TLButton.swift
//  ToDoList
//
//  Created by Aisuluu Kanybekova  on 10/7/25.
//

import SwiftUI

struct TLButton: View {
	
	let title: String
	let background: Color
	let acction: () -> Void
	
    var body: some View {
		Button{
			acction()
		}label: {
			ZStack{
				RoundedRectangle(cornerRadius: 10)
					.foregroundColor(background)
				
				Text(title)
					.foregroundColor(Color.white)
					.bold()
				
			}
		}
    }
}

struct TLButton_Previews: PreviewProvider {
	static var previews: some View {
		TLButton(title: "Value",
				 background: .pink){
			//Action
		}
	}
}
