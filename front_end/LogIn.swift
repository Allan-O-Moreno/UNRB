//
//  LogIn.swift
//  UNRB
//
//  Created by Allan Moreno on 3/4/20.
//  Copyright © 2020 Carlos Varela. All rights reserved.
//

import SwiftUI

let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0)

//defualt username and password
let storedUsername = "Allan"
let storedPassword = "allan"


struct LogIn: View {
    

    @State var username: String = ""
    @State var password: String = ""
    
    @State var authenticationDidFail: Bool = false
    @State var authenticationDidSucceed: Bool = false
    
    @State private var showMenu = true
    
    var body: some View {
        
      // NavigationView{
       
        ZStack{  // everything stacked on top of each other
            
            VStack{    // vertically stacks contents
                    HelloText()  // extract Subview, Text function
                    UserImage() // function for image
            
                    Text("Please enter your username")
                    UsernameTextField(username: $username) // passing the username date into our function
                    Text("Please enter your password")
                    PasswordSecureField(password: $password)
                
                
                    if authenticationDidFail{ //if info failed then display red message saying information is not correct 
                        Text("Information not correct. Try again")
                            .offset(y:-10)
                            .foregroundColor(.red)
                    } // end if didfail
                
                
                Button(action: {   if self.username == storedUsername && self.password == storedPassword { // if statement to compare account and password match with the defualt account and password
                    self.authenticationDidSucceed = true
                    self.authenticationDidFail = false
                    // if succesful proceed to ap
                    
                    
                    
                } else {
                    self.authenticationDidFail = true
                    self.authenticationDidSucceed = false
                    // else display red error message
                    }
                    }
                ) {
                   // NavigationLink(destination: MainMenu() ){
                   LoginButtonContent()
                    
                    
               // } // end link
            
                
                }
                
                HStack{
                Text("Dont Have an account?")
                NavigationLink(destination: SignUp_())
                {
                    
                    
                    Text("Sign Up!")
                    
                }
                }
                    
            .padding()
            
                // display that info is correct then user will click the "Success! Click here to proceed" to continue in the application
            if authenticationDidSucceed {
          
                NavigationLink(destination: MainMenu())
                {
//                    Text("Login Succeeded!")
//                                  .font(.headline)
//                                  .frame(width:250, height: 80)
//                                  .background(Color.yellow)
//                                  .cornerRadius(20.0)
//                                  .animation(Animation.default)
                    //LoginButtonContent()
                    Text("Success! Click here to proceed")
                }
            }
        }
        
    
        
        }
    
 }
}
//}


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
          .frame(width: 250, height: 250)
          .clipped()
          .cornerRadius(150)
          .padding(.bottom,45)
    }
}

struct LoginButtonContent: View {
    var body: some View {
        Text("Submit")
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
        SecureField("Password", text: $password) // secure filed used so when user enters their password, it cannot be seen, privacy is protected
            .padding()
            .background(lightGreyColor)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
    }
}

