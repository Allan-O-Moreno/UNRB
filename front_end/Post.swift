//
//  Post.swift
//  UNRB
//
//  Created by Allan Moreno on 4/21/20.
//  Copyright © 2020 Carlos Varela. All rights reserved.
//

import Foundation
import SwiftUI


struct Post: Codable, Hashable, Identifiable {
    let id: Int
    let title: String
    let body: String
    

}
