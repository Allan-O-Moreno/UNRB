//
//  CameraHandler.swift
//  UNRB
//
//  Created by Carlos Varela on 4/10/20.
//  Copyright © 2020 Carlos Varela. All rights reserved.
//
import SwiftUI

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

