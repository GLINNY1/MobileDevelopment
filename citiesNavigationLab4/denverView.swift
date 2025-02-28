//
//  denverView.swift
//  citiesNavigationLab4
//
//  Created by Gao Han Lin on 2/22/25.
//

import SwiftUI

struct denverView: View {
    @State private var cityInfo: String = ""
    
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "moon.stars.fill")
            
            Spacer()
            Image("denver")
                .resizable()
            
            Spacer()
            Text(cityInfo)
                .frame(width: 350, height: 80, alignment: .leading)
                .background(Color.green)
                .foregroundColor(Color.black)
            
        } // end VStack
        .onAppear() {
            cityInfo = "The Rocky Mountains provide stunning views just outside the city. Check it out! The picture is that of the Colorado State Capitol."
        }
        
    }  // end body

} // end streuct

#Preview {
    denverView()
}
