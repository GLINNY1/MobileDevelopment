//
//  nycView.swift
//  citiesNavigationLab4
//
//  Created by Gao Han Lin on 2/22/25.
//

import SwiftUI

struct nycView: View {
    @State private var cityInfo: String = ""
    
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "moon.stars.fill")
            
            Spacer()
            Image("nyc")
                .resizable()
            
            Spacer()
            Text(cityInfo)
                .frame(width: 300, height: 80, alignment: .leading)
                .background(Color.green)
                .foregroundColor(Color.black)
            
        } // end VStack
        .onAppear() {
            cityInfo = "Times Square lights up the city with energy day and night. Check it out! The picture is that of the Empire State Building."
        }
        
    }  // end body

} // end streuct

#Preview {
    nycView()
}
