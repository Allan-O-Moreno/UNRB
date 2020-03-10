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
            
            Text("About Us")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.bottom, 20)

            
            GroupImage()
           
            Text("This mobile application first started at the University of Nevada, Reno for the Senior Captsone Project. The UNR Building Classifier ws created by a group known as Allan Moreno, Carlos Varela, Timothy Kashi, Johan Yamssi.")
            .fontWeight(.semibold)
            
            

            
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
            .frame(width: 300, height: 300)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom,75)
    }
}
