//
//  ContactUs.swift
//  UNRB
//
//  Created by Carlos Varela on 3/10/20.
//  Copyright © 2020 Carlos Varela. All rights reserved.
//

import SwiftUI

struct ContactUs: View {
    @State var name: String = ""
    @State var email: String = ""
    @State var message: String = ""
    @State var sendmessage: String = ""
    var body: some View {
        VStack{
            
            WelcomeMessage()
            
            NameContent(name: $name)
            
            Email_Content(email: $email)
            
            MessageContent(message: $message)
            
            SendMessageContent()
          
        }
    }
}

struct ContactUs_Previews: PreviewProvider {
    static var previews: some View {
        ContactUs()
    }
}

struct WelcomeMessage: View {
    var body: some View {
          Text("Contact Us")
                 .font(.largeTitle)
                 .fontWeight(.semibold)
                 .padding(.bottom, 20)
    }
}

struct NameContent: View {
    @Binding var name: String // c
    var body: some View {
        TextField("Name", text: $name)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
    }
}

struct Email_Content: View {
    @Binding var email: String
    var body: some View {
        TextField("Email", text: $email)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
    }
}

struct MessageContent: View {
    @Binding var message: String
    var body: some View {
        TextField("Message", text: $message)
        .padding()
        .cornerRadius(90.0)
        .padding(.bottom, 90)
        .background(lightGreyColor)
    }
}

struct SendMessageContent: View {
    var body: some View {
        Text("Send Message") //button content
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width:220, height: 60)
            .background(Color.black)
            .cornerRadius(35.0)
    }
}
