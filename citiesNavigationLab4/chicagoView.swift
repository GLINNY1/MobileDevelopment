//
//  chicagoView.swift
//  citiesNavigationLab4
//
//  Created by Gao Han Lin on 2/22/25.
//

import SwiftUI

struct chicagoView: View {
    @State private var cityInfo: String = ""
    
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "moon.stars.fill")
            
            Spacer()
            Image("chicago")
                .resizable()
            
            Spacer()
            Text(cityInfo)
                .frame(width: 350, height: 80, alignment: .leading)
                .background(Color.green)
                .foregroundColor(Color.black)
            
        } // end VStack
        .onAppear() {
            cityInfo = "Millennium Park is home to the famous Cloud Gate sculpture. Check it out! The picture is that of the Willis Tower."
        }
        
    }  // end body

} // end streuct

#Preview {
    chicagoView()
}
