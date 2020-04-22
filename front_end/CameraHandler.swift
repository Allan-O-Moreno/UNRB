//
//  CameraHandler.swift
//  UNRB
//
//  Created by Carlos Varela on 4/10/20.
//  Copyright © 2020 Carlos Varela. All rights reserved.
//
import SwiftUI
import Foundation



let wolfyImage = UIImage(named:"wolfy")

let imageData = wolfyImage?.jpegData(compressionQuality: 1)

let imageBase64String = imageData?.base64EncodedString()

struct ImageData: Codable{
    let imagedata: String
    let imagebytes: Int
}

//
//class config {
//    let url = URL(string: "https://jsonplaceholder.typicode.com/posts")!
//            var request = URLRequest(url: url)
//            request.httpMethod = "POST"
//             request.setValue("application/json", forHTTPHeaderField: "Content-Type")
//                 
//               
//}
//


struct CameraHandler: View {
    
    
    

    
    @State private var showSheet: Bool = false
    @State private var showImagePicker: Bool = false
    @State private var sourceType: UIImagePickerController.SourceType = .camera
    
    @State private var image: UIImage?
    
    var body: some View {


        NavigationView {
            VStack {
       

                Image(uiImage: image ?? UIImage(named: "wolfy")!)
                .resizable()
                //.aspectRatio(contentMode: .fill)
                .frame(width: 250, height: 250)
                .clipped()
                .cornerRadius(150)
                .padding(.bottom,75)
                
                Button("Choose Picture"){
                    self.showSheet = true
                }.padding()
                    .actionSheet(isPresented: $showSheet) {
                        ActionSheet(title: Text("Select Photo"),
                          message: Text("Choose"), buttons: [
                                        .default(Text("Photo Library")) {
                                            self.showImagePicker = true
                                            self.sourceType = .photoLibrary
                                        },
                                        .default(Text("Camera")){
                                            self.showImagePicker = true
                                            self.sourceType = .camera
                                        },
                                        .cancel()])
                }
            }
            .navigationBarTitle("Camera Demo")
        
        }.sheet(isPresented: $showImagePicker) {
            ImagePicker(image: self.$image, isShown: self.$showImagePicker, sourceType: self.sourceType)
        }
    }
    

}

