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



struct CameraHandler: View {
    
    
    
    
//    let url = URL(string: "https://unr-building-classifier.onrender.com/analyze")
//
////    guard let requestUrl = url else { fatalError() }
////    // Prepare URL Request Object
////    var request = URLRequest(url: requestUrl)
////    request.httpMethod = "POST"
////
////    // HTTP Request Parameters which will be sent in HTTP Request Body
////    let postString = "userId=300&title=My urgent task&completed=false";
////    // Set HTTP Request Body
////    request.httpBody = postString.data(using: String.Encoding.utf8);
////    // Perform HTTP Request
////    let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
////
////            // Check for Error
////            if let error = error {
////                print("Error took place \(error)")
////                return
////            }
////
////            // Convert HTTP Response Data to a String
////            if let data = data, let dataString = String(data: data, encoding: .utf8) {
////                print("Response data string:\n \(dataString)")
////            }
////    }
////    task.resume()
////

    
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

