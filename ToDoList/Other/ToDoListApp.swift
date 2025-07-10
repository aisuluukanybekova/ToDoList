//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Aisuluu Kanybekova  on 7/7/25.
//
import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
	
	init () {
		FirebaseApp.configure()
	}
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
