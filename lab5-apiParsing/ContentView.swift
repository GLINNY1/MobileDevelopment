//
//  ContentView.swift
//  Lab5
//
//  Created by Gao Han Lin on 2/25/25.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            
            VStack {
                // 1) JSON URL  ------------
                NavigationLink(destination: CurrencyView()) {
                     Text("World Currency Abbreviations")
                        .font(.title3)
                        .padding(.bottom, 15)
                }
            
                
                // 2) JSON URL  ------------
                NavigationLink(destination: TodosView()) {
                     Text("TO DO LIST")
                        .font(.title3)
                        .padding(.bottom, 15)
                }
                
                // 3) JSON URL  ------------
                NavigationLink(destination: PostsView()) {
                     Text("Posts List")
                        .font(.title3)
                        .padding(.bottom, 15)
                }
                
                // 4) JSON URL  ------------
                NavigationLink(destination: UsersView()) {
                     Text("User List")
                        .font(.title3)
                        .padding(.bottom, 15)
                }
                
                // 5) JSON URL  ------------
                NavigationLink(destination: CommentsView()) {
                     Text("Comments List")
                        .font(.title3)
                        .padding(.bottom, 15)
                }
                
                
                
            }  // end vertical Stack
            .navigationTitle("JSON SAMPLE URLs")
            
        } // end navigation view
        
    } // end body
    
} // end struct

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
