//
//  ContentView.swift
//  lab2-data_entry
//
//  Created by Gao Han Lin on 2/9/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var companyName = ""
    @State private var address = ""
    @State private var city = ""
    @State private var state = ""
    @State private var zipCode = ""
    @State private var phoneNumber = ""
    @State private var emailAddress = ""
    @State private var mobilePhone = ""
    @State private var mobileCarrier = ""
    @State private var username = ""
    @State private var password = ""
    @State private var reEnterPassword = ""
    @State private var successMessage = ""

    let validMobileCarrier = ["Version", "AT&T", "T-Mobile"] // valid mobile carriers
    let validStates = ["AL", "AK", "AZ", "AR", "CA", "CO", "CT", "DE", "FL", "GA", "HI", "ID", "IL", "IN", "IA", "KS", "KY", "LA", "ME", "MD", "MA", "MI", "MN", "MS", "MO", "MT", "NE", "NV", "NH", "NJ", "NM", "NY", "NC", "ND", "OH", "OK", "OR", "PA", "RI", "SC", "SD", "TN", "TX", "UT", "VT", "VA", "WA", "WV", "WI", "WY"] // valid states

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Group {
                TextField("Company Name", text: $companyName)
                TextField("Address", text: $address)
                TextField("City", text: $city)
                TextField("State (2-letter abbreviation)", text: $state)
                TextField("Zip Code", text: $zipCode)
                    .keyboardType(.numberPad)
                TextField("Phone Number", text: $phoneNumber)
                    .keyboardType(.numberPad)
                TextField("Email Address", text: $emailAddress)
                    .keyboardType(.emailAddress)
                TextField("Mobile Phone", text: $mobilePhone)
                    .keyboardType(.numberPad)
                TextField("Mobile Carrier", text: $mobileCarrier)
                TextField("Username", text: $username)
                SecureField("Password", text: $password)
                SecureField("Re-Enter Password", text: $reEnterPassword)
            }
            .textFieldStyle(RoundedBorderTextFieldStyle())

            Button("Submit") {
                validateForm()
            }
            .padding()

            if !successMessage.isEmpty {
                Rectangle()
                    .fill(Color.green)
                    .frame(height: 50)
                    .overlay(Text(successMessage).foregroundColor(.white))
            }
        }
        .padding()
    }

    func validateForm() {
        if address.count < 5 { // check for valid address name
            successMessage = "Invalid Address. Address must be at least 5 characters long."
            return
        }
        if city.count < 5 { // check for valid city name
            successMessage = "Invalid City. City must be at least 5 characters long."
            return
        }
        if companyName.count < 5 { // check for valid company name
            successMessage = "Invalid Company Name. Company Name must be at least 5 characters long."
        }
        if !validStates.contains(state.uppercased()) { // check for vaild state abbreviation
            successMessage = "Invalid state abbreviation. Enter a correct state abbreviation."
            return
        }
        if phoneNumber.count != 10 || !phoneNumber.allSatisfy({ $0.isNumber }) {
            successMessage = "Invalid Phone Number.Enter a valid mobile number with 10 characters only digits"
            return
        }
        
        if zipCode.count != 5 || !zipCode.allSatisfy({ $0.isNumber }) { // check for vaild zipcode
            successMessage = "Invalid Zip Code. Enter a valid zip code with 5 characters only digits"
            return
        }

        if mobilePhone.count != 10 || !mobilePhone.allSatisfy({ $0.isNumber }) { //check for valid number
            successMessage = "Invalid Mobile Number. Enter a valid mobile number with 10 characters only digits"
            return
        }

        if emailAddress.count < 5 || !emailAddress.contains("@") || !emailAddress.contains(".") { // check for valid email address
            successMessage = "Invalid Email Address. Enter valid email address with atleast 5 characters followed by an @"
            return
        }

        if !validMobileCarrier.contains(mobileCarrier) { // check for valid carrier
            successMessage = "Invalid Mobile Carrier. Enter valid carrier (Version, AT&T, T-Mobile)"
            return
        }

        if username.count < 10 || username.contains(" ") { // check for valid username
            successMessage = "Invalid Username. Enter a valid username with atleast 10 characters without spaces"
            return
        }

        if password.count < 10 || !password.contains(where: { $0.isUppercase }) { // check for valid password
            successMessage = "Invalid Password. Enter a valid password with atleast 10 characters containing uppercase"
            return
        }

        if password != reEnterPassword { // check if the password is the same
            successMessage = "Passwords do not match."
            return
        }

        successMessage = "New Customer was Added" // success message
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
