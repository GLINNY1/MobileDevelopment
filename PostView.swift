//
//  PostView.swift
//  Lab5
//
//  Created by Gao Han Lin on 2/28/25.
//

import SwiftUI

struct Post: Decodable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}

struct PostsView: View {
    @State private var posts = [Post]()
    
    var body: some View {
        NavigationView {
            List(posts, id: \.id) { post in
                VStack(alignment: .leading) {
                    Text("Post #\(post.id)")
                        .font(.headline)
                        .foregroundColor(.cyan)
                    Text(post.title)
                        .font(.body)
                        .fontWeight(.semibold)
                        .foregroundColor(.indigo)
                    Text(post.body)
                        .font(.body)
                        .foregroundColor(.gray)
                        .lineLimit(2)
                }
                .padding(.vertical, 5)
            }
            .navigationTitle("Posts List")
            .task {
                await fetchPostsData()
            }
        }
    }
    
    func fetchPostsData() async {
        // create the URL
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
            print("Hey Man, THIS URL DOES NOT WORK!")
            return
        }
        
        // fetch the data
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            
            // decode that data
            if let decodedResponse = try? JSONDecoder().decode([Post].self, from: data) {
                posts = decodedResponse
            }
        } catch {
            print("Bad news ... This data is not valid :-(")
        }
    }
}

struct PostsView_Previews: PreviewProvider {
    static var previews: some View {
        PostsView()
    }
}
