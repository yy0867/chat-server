//
//  User.swift
//  
//
//  Created by 김세영 on 2022/09/09.
//

import Foundation
import Fluent
import Vapor

final class User: Model, Content {
    
    static let schema = "User"
    
    @ID(key: .id)
    var id: UUID?
    
    @Field(key: "name")
    var name: String
    
    @Field(key: "username")
    var username: String
    
    @Field(key: "password")
    var password: String
    
    init() {}
    
    init(name: String, username: String, password: String) {
        self.id = UUID()
        self.name = name
        self.username = username
        self.password = password
    }
}
