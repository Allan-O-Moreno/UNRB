//
//  AboutMe.swift
//  UNRB
//
//  Created by Allan Moreno on 3/5/20.
//  Copyright © 2020 Carlos Varela. All rights reserved.
//

import SwiftUI

struct AboutMe: View {
    var body: some View {
        
        VStack{
            
          
        
            GroupImage()
            
            AboutUs()
            
            
           // VStack(alignment: .leading){
            Text("Origin of the application")
                .font(.subheadline)
                .fontWeight(.semibold)
                // .padding()
           // }
            
            
    
        
            
            
            
           
            TeamInfo()
            
        Text("To learn more about the application please proceed to proceed to our website")
        .font(.subheadline)
        .fontWeight(.semibold)
            .padding()
            
            Button(action:{
                UIApplication.shared.open(URL(string:"https://jmyamssi.wixsite.com/unrbc")!)
            } ){
                
//       UIApplication.shared.open(URL(string:"https://fitness.unr.edu/Facility/ReservationRequest")!)
            WebsiteButtonContent()
                
            }
        
            
        
            


            
        }
        
    }
}

struct AboutMe_Previews: PreviewProvider {
    static var previews: some View {
        AboutMe()
    }
}

struct GroupImage: View {
    var body: some View {
        Image("team")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 350, height: 350)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom)
        
    }
}

struct TeamInfo: View {
    var body: some View {
        Text("This mobile application first started at the University of Nevada, Reno for the Senior Captsone Project. The UNR Building Classifier was created by a group known as Allan Moreno, Carlos Varela, Timothy Kashi, Johan Yamssi.")
           // .fontWeight(.semibold)
            //.font(.subheadline)
            .padding()
            
    }
}

struct AboutUs: View {
    var body: some View {
        Text("About Us")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.bottom, 20)
    }
}

struct WebsiteButtonContent: View {
    var body: some View {
        Text("Proceed To Website")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width:220, height: 60)
            .background(Color.blue)
            .cornerRadius(35.0)
    }
}
