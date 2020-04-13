
//
//  ContactUs.swift
//  UNRB
//
//  Created by Carlos Varela on 3/10/20.
//  Copyright © 2020 Carlos Varela. All rights reserved.
//
import Foundation
import UIKit
import MessageUI
import SwiftUI




struct ContactUs: View {
    @State var name: String = ""
    @State var email: String = ""
    @State var message: String = ""
    @State var sendmessage: String = ""
    var body: some View {
        VStack{
            
            Image("mail ")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 150)
                .clipped()
                .cornerRadius(150)
                .padding(.bottom,75)

            
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
    
    
    

     
    class ViewController: UIViewController, MFMailComposeViewControllerDelegate {
        
        override func viewDidLoad() {
            super.viewDidLoad()
        }
        
        @IBAction func sendEmailButtonTapped(sender: AnyObject) {
            let mailComposeViewController = configuredMailComposeViewController()
            if MFMailComposeViewController.canSendMail() {
                self.present(mailComposeViewController, animated: true, completion: nil)
            } else {
                //self.showSendMailErrorAlert()
            }
        }
        
        func configuredMailComposeViewController() -> MFMailComposeViewController {
            let mailComposerVC = MFMailComposeViewController()
            mailComposerVC.mailComposeDelegate = self
            
            mailComposerVC.setToRecipients([])
            mailComposerVC.setSubject("Sending In-App Email")
            mailComposerVC.setMessageBody("Sending Email through your app in Swift", isHTML: false)
            
            return mailComposerVC
        }
        
    //    func showSendMailErrorAlert() {
    //        let sendMailErrorAlert = UIAlertView(title: "Could Not Send Email", message: "Your device could not send Email.  Please check Email configuration and try again.", delegate: self, cancelButtonTitle: "OK")
    //        sendMailErrorAlert.show()
    //    }
    //
    //    // MFMailComposeViewControllerDelegate Method
    //    func mailComposeController(controller: MFMailComposeViewController!, didFinishWithResult result: MFMailComposeResult, error: NSError!) {
    //        controller.dismiss(animated: true, completion: nil)
    //    }
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}




