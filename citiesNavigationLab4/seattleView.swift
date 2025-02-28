//
//  seattleView.swift
//  citiesNavigationLab4
//
//  Created by Gao Han Lin on 2/22/25.
//

import SwiftUI

struct seattleView: View {
    @State private var cityInfo: String = ""
    
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "moon.stars.fill")
            
            Spacer()
            Image("seattle")
                .resizable()
            
            Spacer()
            Text(cityInfo)
                .frame(width: 350, height: 80, alignment: .leading)
                .background(Color.green)
                .foregroundColor(Color.black)
            
        } // end VStack
        .onAppear() {
            cityInfo = "Pike Place Market is a historic landmark filled with local vendors and fresh seafood. Check it out! The picture is that of the Space Needle."
        }
        
    }  // end body

} // end streuct

#Preview {
    seattleView()
}
