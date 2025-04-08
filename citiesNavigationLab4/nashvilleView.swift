//
//  nashvilleView.swift
//  citiesNavigationLab4
//
//  Created by Gao Han Lin on 2/22/25.
//

import SwiftUI

struct nashvilleView: View {
    @State private var cityInfo: String = ""
    
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "moon.stars.fill")
            
            Spacer()
            Image("nashville")
                .resizable()
            
            Spacer()
            Text(cityInfo)
                .frame(width: 350, height: 80, alignment: .leading)
                .background(Color.green)
                .foregroundColor(Color.black)
            
        } // end VStack
        .onAppear() {
            cityInfo = "The Grand Ole Opry is the heart of country music. Check it out! The picture is that of the Ryman Auditorium."
        }
        
    }  // end body

} // end streuct

#Preview {
    nashvilleView()
}
