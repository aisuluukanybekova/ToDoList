//
//  ToDoListItemsView.swift
//  ToDoList
//
//  Created by Aisuluu Kanybekova  on 10/7/25.
//
import FirebaseFirestore
import SwiftUI

struct ToDoListView: View {
	@StateObject var viewModel: ToDoListViewViewModel
	@FirestoreQuery var items: [ToDoListItem]
	
	private let userId: String
	
	init(userId: String){
		self.userId = userId
		self._items = FirestoreQuery(collectionPath: "users/\(userId)/todos")
		self._viewModel = StateObject(wrappedValue: ToDoListViewViewModel(userId: userId))
	}

	var body: some View {
		NavigationView {
			VStack {
				List(items) { item in
					ToDoListItemView(item: item)
						.swipeActions {
							Button("Delete") {
								viewModel.delete(id: item.id)
							}
							.tint(.red)
						}
				}
				.listStyle(PlainListStyle())
			}
			.navigationTitle("To Do List")
			.toolbar {
				Button {
					viewModel.showingNewItemView = true
				} label: {
					Image(systemName: "plus")
				}
			}
			.sheet(isPresented: $viewModel.showingNewItemView) {
				NewItemView(newItemPresented: $viewModel.showingNewItemView)
			}
		}
	}
}

#Preview {
	ToDoListView(userId: "q8COdDXe1EWLZ1V0gC4cuDiktik2")
}
