//
//  SignUp .swift
//  UNRB
//
//  Created by Allan Moreno on 3/10/20.
//  Copyright © 2020 Carlos Varela. All rights reserved.
//

import SwiftUI

struct SignUp_: View {
    
    @State var username: String = ""
    @State var email: String = ""
    @State var password: String = ""
    @State var verify_password: String = ""
    
    
    var body: some View {
        
        VStack{
            
            wolfy()
            
            SignUp()
            
            UserNameContent(username: $username)
            
            EmailContent(email: $email)
            
        
            PasswordContent(password: $password)
            
            ReEnterPasswordContent(verify_password: $verify_password)
            
            CreateAccountContent()
        
        }
        
    
        
    }
}

struct SignUp__Previews: PreviewProvider {
    static var previews: some View {
        SignUp_()
    }
}

struct SignUp: View {
    var body: some View {
        Text("Sign Up")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.bottom, 20)
    }
}

struct wolfy: View {
    var body: some View {
        Image("wolfy")
            .resizable()
            //.aspectRatio(contentMode: .fill)
            .frame(width: 250, height: 250)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom,75)
    }
}

struct CreateAccountContent: View {
    var body: some View {
        Text("Create Account")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width:220, height: 60)
            .background(Color.black)
            .cornerRadius(35.0)
            .padding()
    }
}

struct UserNameContent: View {
    @Binding var username: String // creating a data connection from the state username variable
    var body: some View {
        TextField("Username", text: $username)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
    }
}

struct EmailContent: View {
    @Binding var email: String // creating a data connection from the state email variable

    var body: some View {
        TextField("Email", text: $email)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
    }
}

struct PasswordContent: View {
    @Binding var password: String // creating a data connection from the state password variable
    var body: some View {
        SecureField("Password", text: $password)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
    }
}

struct ReEnterPasswordContent: View {
    @Binding var verify_password: String // creating a data connection from the state password variable

    var body: some View {
        SecureField("Re-enter Password", text: $verify_password)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
    }
}
