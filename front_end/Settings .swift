//
//  SwiftUIView.swift
//  UNRB
//
//  Created by Allan Moreno on 3/6/20.
//  Copyright © 2020 Carlos Varela. All rights reserved.
//

import SwiftUI
import UIKit

struct Settings: View {
    var body: some View {
        
        VStack{
            
        Image("settings")
        .resizable()
        .aspectRatio(contentMode: .fill)
        .frame(width: 150, height: 150)
        .clipped()
        .cornerRadius(150)
        //.padding(.bottom,75)

            
        Text("Settings")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.bottom, 50)
            
            
            HStack{
                
        Customize()
        SettingsImage2()
                
            }
            
            
            HStack{
        Update()
        UpdateImage()
                
           
                
            }
            
        
            HStack{
        NavigationLink(destination: ContactUs())
        {
            ContactUsContent()
        }
                ContactUSImage()
                
            }
            
        
            HStack{
        SignOut()
        SignOutImage()
                
            }
            
            
        

        
        }
        
    } 
}

struct Customize: View {
    var body: some View {
        Text("Account Settings")
        .font(.headline)
        .foregroundColor(.white)
        .padding()
        .frame(width:230, height: 60)
        .background(Color.blue)
        .cornerRadius(35.0)
        .padding()
    }
}

struct SignOut: View {
    var body: some View {
       Text("Sign Out")
        .font(.headline)
        .foregroundColor(.white)
        .padding()
        .frame(width:230, height: 60)
        .background(Color.blue)
        .cornerRadius(35.0)
        .padding()
    }
}
struct Update: View {
    var body: some View {
      Text("Software Update")
      .font(.headline)
      .foregroundColor(.white)
      .padding()
      .frame(width:230, height: 60)
      .background(Color.blue)
      .cornerRadius(35.0)
      .padding()
    }
}


struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}

struct ContactUsContent: View {
    var body: some View {
        Text("Contact Us")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width:230, height: 60)
            .background(Color.blue)
            .cornerRadius(35.0)
            .padding()
    }
}

struct SignOutImage: View {
    var body: some View {
        Image("signout")
            .resizable()
            //.aspectRatio(contentMode: .fill)
            .frame(width: 100, height: 100)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom)
    }
}

struct SettingsImage2: View {
    var body: some View {
        Image("settings2")
            .resizable()
            //.aspectRatio(contentMode: .fill)
            .frame(width: 100, height: 100)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom)
    }
}

struct ContactUSImage: View {
    var body: some View {
        Image("mail")
            .resizable()
            //.aspectRatio(contentMode: .fill)
            .frame(width: 100, height: 100)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom)
    }
}

struct UpdateImage: View {
    var body: some View {
        Image("update")
            .resizable()
            //.aspectRatio(contentMode: .fill)
            .frame(width: 100, height: 100)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom)
    }
}
