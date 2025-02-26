//
//  ContentView.swift
//  lab3-playing_cards
//
//  Created by Gao Han Lin on 2/9/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var card1:String = "card1"
    @State private var card2:String = "card2"
    @State private var card3:String = "card3"
    @State private var card4:String = "card4"
    @State private var card5:String = "card5"
    @State private var card6:String = "card6"
    @State private var card7:String = "card7"
    @State private var card8:String = "card8"
    @State private var card9:String = "card9"
    @State private var card10:String = "card10"
    
    @State private var resultMessage:String = ""
    
    var body: some View {
        VStack {
            HStack {
                Image(card1)
                    .resizable()
                
                Image(card2)
                    .resizable()
            } // end HStack
            
            HStack {
                Image(card3)
                    .resizable()
                
                Image(card4)
                    .resizable()
            } // end HStack
            
            HStack {
                Image(card5)
                    .resizable()
                
                Image(card6)
                    .resizable()
            } // end HStack
            
            HStack {
                Image(card7)
                    .resizable()
                
                Image(card8)
                    .resizable()
            } // end HStack
            
            HStack {
                Image(card9)
                    .resizable()
                
                Image(card10)
                    .resizable()
            } // end HStack
            
            Button(action: {
                //
                // Swift Code-generate random number between 1 and 13
                //
                
                //array
                var cardValues: [Int] = []
                
                var randomNumber:Int = 0
                for i in 1...10 {
                    if i == 1 {
                        randomNumber = Int.random(in: 1...13)
                        card1 = "card" + String(randomNumber)
                    }
                    else if i == 2 {
                        randomNumber = Int.random(in: 1...13)
                        card2 = "card" + String(randomNumber)
                    }
                    else if i == 3 {
                        randomNumber = Int.random(in: 1...13)
                        card3 = "card" + String(randomNumber)
                    }
                    else if i == 4 {
                        randomNumber = Int.random(in: 1...13)
                        card4 = "card" + String(randomNumber)
                    }
                    else if i == 5 {
                        randomNumber = Int.random(in: 1...13)
                        card5 = "card" + String(randomNumber)
                    }
                    else if i == 6 {
                        randomNumber = Int.random(in: 1...13)
                        card6 = "card" + String(randomNumber)
                    }
                    else if i == 7 {
                        randomNumber = Int.random(in: 1...13)
                        card7 = "card" + String(randomNumber)
                    }
                    else if i == 8 {
                        randomNumber = Int.random(in: 1...13)
                        card8 = "card" + String(randomNumber)
                    }
                    else if i == 9 {
                        randomNumber = Int.random(in: 1...13)
                        card9 = "card" + String(randomNumber)
                    }
                    else if i == 10 {
                        randomNumber = Int.random(in: 1...13)
                        card10 = "card" + String(randomNumber)
                    }
                    
                    cardValues.append(randomNumber)
                    
                    let highCard = cardValues.max() ?? 1
                    let lowCard = cardValues.min() ?? 1
                    let sum = cardValues.reduce(0, +)
                    let average = Double(sum) / Double(cardValues.count)
                    
                    var frequencyDict = [Int: Int]()
                    for num in cardValues {
                        frequencyDict[num, default: 0] += 1
                    }
                    
                    let mostFrequent = frequencyDict.max { $0.value < $1.value }?.key ?? 1

                    
                    let posHigh = cardValues.firstIndex(of: highCard).map { $0 + 1 } ?? -1
                    let posLow = cardValues.firstIndex(of: lowCard).map { $0 + 1 } ?? -1
                    
                    resultMessage = """
                    High Card: \(highCard)         Low Card: \(lowCard)
                    Sum: \(sum)                    Freq (Most): \(mostFrequent)
                    Pos# of High: \(posHigh)       Pos# of Low: \(posLow)
                    Average: \(String(format: "%.2f", average))  Range (High - Low): \(highCard)-\(lowCard)
                    """
                    
                } // end for loop
            }, label: {
                Text("RANDOM")
                    .padding()
                    .foregroundColor(Color.green)
                    .font(.largeTitle)
                
            }) // end button
            
            Text(resultMessage)
                .frame(width: 350, height: 100, alignment: .leading)
                .background(Color.green)
                .foregroundColor(Color.black)
            
        } // end VStack
        
    } // end body
    
} // end struct


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
