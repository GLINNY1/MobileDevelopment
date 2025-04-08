import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(.lightGray)
                    .ignoresSafeArea()
                
                VStack {
                    NavigationLink(destination: bostonView()) {
                        Text("BOSTON")
                            .padding()
                            .background(Color.green)
                            .foregroundColor(.black)
                            .font(.title)
                            .cornerRadius(10)
                            .padding(.bottom, 15)
                    } // end nav link Boston

                    NavigationLink(destination: nashvilleView()) {
                        Text("NASHVILLE")
                            .padding()
                            .background(Color.green)
                            .foregroundColor(.black)
                            .font(.title)
                            .cornerRadius(10)
                            .padding(.bottom, 15)
                    } // end nav link Nashville
                    
                    NavigationLink(destination: nycView()) {
                        Text("NYC")
                            .padding()
                            .background(Color.green)
                            .foregroundColor(.black)
                            .font(.title)
                            .cornerRadius(10)
                            .padding(.bottom, 15)
                    } // end nav link NYC
                    
                    NavigationLink(destination: miamiView()) {
                        Text("MIAMI")
                            .padding()
                            .background(Color.green)
                            .foregroundColor(.black)
                            .font(.title)
                            .cornerRadius(10)
                            .padding(.bottom, 15)
                    } // end nav link for Maimi
                    
                    NavigationLink(destination: dallasView()) {
                        Text("DALLAS")
                            .padding()
                            .background(Color.green)
                            .foregroundColor(.black)
                            .font(.title)
                            .cornerRadius(10)
                            .padding(.bottom, 15)
                    } // end nav link for Dallas
                    
                    NavigationLink(destination: denverView()) {
                        Text("DENVER")
                            .padding()
                            .background(Color.green)
                            .foregroundColor(.black)
                            .font(.title)
                            .cornerRadius(10)
                            .padding(.bottom, 15)
                    } // end nav link for Denver
                    
                    NavigationLink(destination: chicagoView()) {
                        Text("CHICAGO")
                            .padding()
                            .background(Color.green)
                            .foregroundColor(.black)
                            .font(.title)
                            .cornerRadius(10)
                            .padding(.bottom, 15)
                    } // end nav link for Chicago
                    
                    NavigationLink(destination: seattleView()) {
                        Text("SEATTLE")
                            .padding()
                            .background(Color.green)
                            .foregroundColor(.black)
                            .font(.title)
                            .cornerRadius(10)
                            .padding(.bottom, 15)
                    } // end nav link for Seattle
                    
                } // end VStack
                .navigationTitle("US Cities")

            } // end ZStack
        } // end navigation view
    }  // end body
}  // end struct

#Preview {
    ContentView()
}   
