//
//  ContentView.swift
//  lab1
//
//  Created by Gao Han Lin on 1/30/25.
//

import SwiftUI

struct ContentView: View {
    // State variables to store user input
    @State private var name: String = ""
    @State private var hobby: String = ""
    @State private var musicType: String = ""
    @State private var submitted: Bool = false
    @State private var colorValue: Double = 0.5
    
    var body: some View {
        ZStack {
            // Background Image
            Image("gates")
                .resizable()
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                // Name Input
                VStack(alignment: .leading) {
                    Text("What's your name?")
                        .bold()
                        .font(.headline)
                    TextField("Enter your name", text: $name)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(radius: 3)
                }
                
                // Hobby Input
                VStack(alignment: .leading) {
                    Text("What's your favorite hobby?")
                        .bold()
                        .font(.headline)
                    TextField("Enter your hobby", text: $hobby)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(radius: 3)
                }
                
                // Music Input
                VStack(alignment: .leading) {
                    Text("What type of music do you like?")
                        .bold()
                        .font(.headline)
                    TextField("Enter music type", text: $musicType)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(radius: 3)
                }
                
                // Submit Button
                Button(action: {
                    submitted = true
                }) {
                    Text("Submit")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding()
                        .frame(width: 150)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                        .shadow(radius: 4)
                }
                .padding(.top, 10)
                
                // Circle with Inputs after submitting
                Circle()
                    .fill(Color(red: colorValue, green: 0.5, blue: 1 - colorValue)) // Dynamic Color
                        .frame(width: 150, height: 150)
                        .overlay(
                            Text(submitted ? "\(name)\n\(hobby)\n\(musicType)" : "Your Info Here")
                                    .multilineTextAlignment(.center)
                                    .font(.headline)
                                    .foregroundColor(.white)
                                    .padding()
                )
                
                //Slider to change color of circle
                VStack {
                    Text("Circle Color")
                    .font(.headline)
                    
                    Slider(value: $colorValue, in: 0...1)
                        .accentColor(.purple)
                        .padding(.horizontal, 40)
                }
            }
            .padding()
        }
    }
}


#Preview {
    ContentView()
}
