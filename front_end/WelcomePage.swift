//
//  WelcomePage.swift
//  UNRB
//
//  Created by Allan Moreno on 3/9/20.
//  Copyright © 2020 Carlos Varela. All rights reserved.
//

import SwiftUI

struct WelcomePage: View {
    var body: some View {
        
        NavigationView{   // navigation view to navigate around the app 
        VStack{
            wolf_logo()
            Greeting()
            Text("If you dont have an account, Please Sign Up!")
            NavigationLink(destination: SignUp_()) // navigation links used to transtion to the next page in the application
            {
            SignUpContent()
            }
            
        Text("If you already have an account, Please Sign In!")
            NavigationLink(destination: LogIn())
            {
            SignInContent()
            }
        

            
        
        }
        
        
        }
    }
      
}

struct WelcomePage_Previews: PreviewProvider {
    static var previews: some View {
        WelcomePage()
    }
}

struct SignUpContent: View {
    var body: some View {
        Text("Sign Up")   // attributes below i.e .font , and so forth is what gives the buttons the designs in swift
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width:220, height: 60)
            .background(Color.black)
            .cornerRadius(35.0)
            .padding()
    }
}

struct SignInContent: View {
    var body: some View {
        Text("Sign In")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width:220, height: 60)
            .background(Color.black)
            .cornerRadius(35.0)
            .padding()
    }
}

struct wolf_logo: View {
    var body: some View {
        Image("wolf_logo ")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 250, height: 250)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom,75)
    }
}

struct Greeting: View {
    var body: some View {
        Text("Welcome UNR Students!")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.bottom, 20)
    }
}
