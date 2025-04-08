//
//  CommentsView.swift
//  Lab5
//
//  Created by Gao Han Lin on 2/28/25.
//

import SwiftUI

struct Comment: Decodable {
    let postId: Int
    let id: Int
    let name: String
    let email: String
    let body: String
}

struct CommentsView: View {
    @State private var comments = [Comment]()
    
    var body: some View {
        NavigationView {
            List(comments, id: \.id) { comment in
                VStack(alignment: .leading) {
                    Text("Comment #\(comment.id)")
                        .font(.headline)
                        .foregroundColor(.cyan)
                    Text(comment.name)
                        .font(.body)
                        .fontWeight(.semibold)
                        .foregroundColor(.indigo)
                    Text(comment.email)
                        .font(.caption)
                        .foregroundColor(.blue)
                    Text(comment.body)
                        .font(.body)
                        .foregroundColor(.gray)
                        .lineLimit(2)
                }
                .padding(.vertical, 5)
            }
            .navigationTitle("Comments List")
            .task {
                await fetchCommentsData()
            }
        }
    }
    
    func fetchCommentsData() async {
        // create the URL
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/comments") else {
            print("Hey Man, THIS URL DOES NOT WORK!")
            return
        }
        
        // fetch the data
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            
            // decode that data
            if let decodedResponse = try? JSONDecoder().decode([Comment].self, from: data) {
                comments = decodedResponse
            }
        } catch {
            print("Bad news ... This data is not valid :-(")
        }
    }
}

struct CommentsView_Previews: PreviewProvider {
    static var previews: some View {
        CommentsView()
    }
}
