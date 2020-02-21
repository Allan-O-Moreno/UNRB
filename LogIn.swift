//
//  LogIn.swift
//  UNR_Classifier
//
//  Created by Allan Moreno on 2/13/20.
//  Copyright © 2020 Allan Moreno. All rights reserved.
//

import SwiftUI
import UIKit

struct LogIn: View {
    @State private var email: String = "Please Enter Email"
    @State private var password: String = "Please Enter Password"

    
    var body: some View {
        
      
        VStack {
          
            
           Image("logo")
            
                Text("Login page")
                
                HStack {
                    
                    Text("Email: ")
                    TextField("Please enter your email", text: $email)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 3)
                } // end HStack
                
                HStack{
                    
                Text("Password: ")
                    TextField("Please enter your password", text: $password)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 3)
                } // end Hstack
                
        }

          // end VStack
        
        
        
    }
}

struct LogIn_Previews: PreviewProvider {
    static var previews: some View {
        LogIn()
    }
}
