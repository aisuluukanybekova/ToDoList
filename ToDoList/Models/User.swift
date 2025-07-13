//
//  User.swift
//  ToDoList
//
//  Created by Aisuluu Kanybekova  on 10/7/25.
//

import Foundation

struct User: Codable {
	let id: String
	let name: String
	let email: String
	let joined: TimeInterval
}
