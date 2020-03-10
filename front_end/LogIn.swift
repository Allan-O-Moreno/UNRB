//
//  LogIn.swift
//  UNRB
//
//  Created by Allan Moreno on 3/4/20.
//  Copyright © 2020 Carlos Varela. All rights reserved.
//

import SwiftUI


let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0)

let storedUsername = "Allan"
let storedPassword = "Allan"

struct LogIn: View {
    @State var username: String = ""
    @State var password: String = ""
    
    @State var authenticationDidFail: Bool = false
    @State var authenticationDidSucceed: Bool = false
    
    var body: some View {
       
        ZStack{  // everything stacked on top of each other
            
            VStack{
                    HelloText()  // extract Subview, Text function
                    UserImage() // function for image
                    UsernameTextField(username: $username) // passing the username date into our function
                    PasswordSecureField(password: $password)
                    if authenticationDidFail{
                        Text("Information not correct. Try again")
                            .offset(y:-10)
                            .foregroundColor(.red)
                    }
                
                
                Button(action: {   if self.username == storedUsername && self.password == storedPassword {
                    self.authenticationDidSucceed = true
                    self.authenticationDidFail = false
                } else {
                    self.authenticationDidFail = true
                    self.authenticationDidSucceed = false
                    }
                    }
                ) {
                   LoginButtonContent()
                    
                }
                
                }
                   
            .padding()
            
            if authenticationDidSucceed {
                Text("Login Succeeded!")
                    .font(.headline)
                    .frame(width:250, height: 80)
                    .background(Color.yellow)
                    .cornerRadius(20.0)
                    .animation(Animation.default)
            }
        }
        
    
        
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

struct LoginButtonContent: View {
    var body: some View {
        Text("LOGIN") //button content 
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width:220, height: 60)
            .background(Color.black)
            .cornerRadius(35.0)
    }
}

struct UsernameTextField: View {
    @Binding var username: String // creating a data connection from the state username variable
    var body: some View {
        TextField("Username", text: $username)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
    }
}

struct PasswordSecureField: View {
    @Binding var password: String // creating a data connection from the state password variable
    var body: some View {
        SecureField("Password", text: $password)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
    }
}
