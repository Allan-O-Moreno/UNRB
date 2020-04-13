//
//  Menu.swift
//  UNRB
//
//  Created by Allan Moreno on 3/4/20.
//  Copyright © 2020 Carlos Varela. All rights reserved.
//

import SwiftUI
import UIKit


struct MainMenu: View {
    var body: some View{
        
        
        VStack{
            
            CampusImage()
            
            //Menu Title
            Menu()
            
            //CameraB()
            
            NavigationLink(destination: BList())
            {
                Text("Building List")
                
            }
            
            
            
            NavigationLink(destination: Settings())
            {
                Text("Settings")
            }
            
            
            
            NavigationLink(destination: AboutMe())
            {
                Text("About Us")
                           
            }
            
            NavigationLink(destination: CameraHandler())
            {
                Text("Camera")
            }
            
        }
    }

    
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        MainMenu()
    }
}

struct Menu: View {
    var body: some View {
        VStack{
            Text("Menu").font(.largeTitle).fontWeight(.semibold).padding(.bottom, 50)
        }
    }
}

struct CameraB: View {
    var body: some View {
        Button("Camera"){
           /* func openCameraButton(sender: AnyObject) {
                if UIImagePickerController.isSourceTypeAvailable(.camera) {
                    var imagePicker = UIImagePickerController()
                    imagePicker.delegate = self
                    imagePicker.sourceType = .camera;
                    imagePicker.allowsEditing = false
                    self.presentViewController(imagePicker, animated: true, completion: nil)
                }
            }*/
        }
        .padding(25)
    }
}

struct BuildingListB: View {
    var body: some View {
        Button("Building List"){
            
        }
        .padding(25)
    }
}

struct SettingsB: View {
    var body: some View {
        Button("Settings"){
            
        }
        .padding(25)
    }
}

struct AboutB: View {
    var body: some View {
        Button("About"){
            
        }
        .padding(25.0)
    }
}


/*class MenuController: UIViewController{
    override func viewDidLoad(){
        super.viewDidLoad()
        print("menu loaded")
    }
    
    override func didReceiveMemoryWarning(){
        super.didReceiveMemoryWarning()
    }
}
*/

struct CampusImage: View {
    var body: some View {
        Image("campus")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 300)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom,75)
    }
}

