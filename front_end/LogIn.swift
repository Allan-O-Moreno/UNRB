//
//  LogIn.swift
//  UNRB
//
//  Created by Allan Moreno on 3/4/20.
//  Copyright © 2020 Carlos Varela. All rights reserved.
//

import SwiftUI

let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0)

struct LogIn: View {
    @State var username: String = ""
    @State var password: String = ""
    
    
    var body: some View {
        VStack{
            HelloText()  // extract Subview, Text function
            UserImage() // function for image
            TextField("Username", text: $username)
            .padding()
            .background(lightGreyColor)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            SecureField("Password", text: $password)
                .padding()
                .background(lightGreyColor)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
                
            
        }
    .padding()
        }
    }


struct LogIn_Previews: PreviewProvider {
    static var previews: some View {
        LogIn()
    }
}

struct HelloText: View {
    var body: some View {
        Text("Hello Students!")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.bottom, 20)
    }
}

struct UserImage: View {
    var body: some View {
        Image("logo")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 150, height: 150)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom,75)
    }
}
