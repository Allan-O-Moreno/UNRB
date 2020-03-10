//
//  SwiftUIView.swift
//  UNRB
//
//  Created by Johan  on 3/6/20.
//  Copyright © 2020 Carlos Varela. All rights reserved.
//

import SwiftUI
import UIKit

struct Settings: View {
    var body: some View {
        Text("Settings").font(.largeTitle).fontWeight(.semibold).padding(.bottom, 50)
    }
}

struct Customize: View {
    var body: some View {
        Button("Settings"){
            
        }.padding(25)
    }
}

struct SignOut: View {
    var body: some View {
        Button("Sign Out"){
        }.padding(25)
    }
}
struct Update: View {
    var body: some View {
        Button("Check for Software Update"){
            
        }.padding(25)
    }
}


struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
