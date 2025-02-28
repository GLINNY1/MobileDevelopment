//
//  bostonView.swift
//  citiesNavigationLab4
//
//  Created by Gao Han Lin on 2/22/25.
//

import SwiftUI

struct bostonView: View {
    @State private var cityInfo: String = ""
    
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "moon.stars.fill")
            
            Spacer()
            Image("boston")
                .resizable()
            
            Spacer()
            Text(cityInfo)
                .frame(width: 350, height: 80, alignment: .leading)
                .background(Color.green)
                .foregroundColor(Color.black)
            
        } // end VStack
        .onAppear() {
            cityInfo = "The Boston tea Party ship is here in the harbor. Check it out! The picture is that of the Prudential Tower."
        }
        
    }  // end body

} // end streuct

#Preview {
    bostonView()
}
