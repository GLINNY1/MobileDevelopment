//
//  UsersView.swift
//  Lab5
//
//  Created by Gao Han Lin on 2/28/25.
//

import SwiftUI

struct User: Decodable {
    let id: Int
    let name: String
    let email: String
    let phone: String
}

struct UsersView: View {
    @State private var users = [User]()
    
    var body: some View {
        NavigationView {
            List(users, id: \.id) { user in
                VStack(alignment: .leading) {
                    Text(user.name)
                        .font(.headline)
                        .foregroundColor(.cyan)
                    Text(user.email)
                        .font(.body)
                        .foregroundColor(.indigo)
                    Text(user.phone)
                        .font(.body)
                        .foregroundColor(.red)
                }
            }
            .navigationTitle("Users List")
            .task {
                await fetchUsersData()
            }
        }
    }
    
    func fetchUsersData() async {
        // create the URL
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else {
            print("Hey Man, THIS URL DOES NOT WORK!")
            return
        }
        
        // fetch the data
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            
            // decode that data
            if let decodedResponse = try? JSONDecoder().decode([User].self, from: data) {
                users = decodedResponse
            }
        } catch {
            print("Bad news ... This data is not valid :-(")
        }
    }
}

struct UsersView_Previews: PreviewProvider {
    static var previews: some View {
        UsersView()
    }
}
