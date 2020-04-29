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
            
            
            
            HStack{
            NavigationLink(destination: BList())
            {
            
                    
                BListContent()
                    
                
                
            }
                BuildingImage()
                
            } // End HStack
            
            

            
            
            HStack{
            NavigationLink(destination: Settings())
            {
                SettingsContent()
                               
            }
                
                SettingsImage()
                
            }// End HStack
            
            
            HStack{
            NavigationLink(destination: AboutMe())
            {
                AboutMeContent()
                               
                           
            }
                AboutUsImage()
                
                
            } // End HStack
            
            
            HStack{
                
            NavigationLink(destination: CameraHandler())
            {
                CameraContent()
                               
            }
            
                CameraImage()
                
                
            } // End HStack
            
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
            Text("Menu")
            .font(.largeTitle)
            .fontWeight(.semibold)
           // .padding()
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
        Image("logo")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 150, height: 150)
            .clipped()
            .cornerRadius(150)
            //.padding(.bottom,75)

            //.padding(.bottom,75)
    }
}


struct BListContent: View {
    var body: some View {
        Text("Building List")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width:230, height: 60)
            .background(Color.blue)
            .cornerRadius(35.0)
            .padding()
    }
}

struct SettingsContent: View {
    var body: some View {
        Text("Settings")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width:230, height: 60)
            .background(Color.blue)
            .cornerRadius(35.0)
            .padding()
    }
}

struct AboutMeContent: View {
    var body: some View {
        Text("About Us")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width:230, height: 60)
            .background(Color.blue)
            .cornerRadius(35.0)
            .padding()
    }
}

struct CameraContent: View {
    var body: some View {
        Text("Camera")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width:230, height: 60)
            .background(Color.blue)
            .cornerRadius(35.0)
            .padding()
    }
}

struct BuildingImage: View {
    var body: some View {
        Image("building")
            .resizable()
            //.aspectRatio(contentMode: .fill)
            .frame(width: 100, height: 100)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom)
    }
}

struct AboutUsImage: View {
    var body: some View {
        Image("team_1")
            .resizable()
            //.aspectRatio(contentMode: .fill)
            .frame(width: 100, height: 100)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom)
    }
}

struct CameraImage: View {
    var body: some View {
        Image("ihpone")
            .resizable()
            //.aspectRatio(contentMode: .fill)
            .frame(width: 100, height: 100)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom)
    }
}

struct SettingsImage: View {
    var body: some View {
        Image("settings")
            .resizable()
            //.aspectRatio(contentMode: .fill)
            .frame(width: 100, height: 100)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom)
    }
}
