//
//  Message.swift
//  
//
//  Created by 김세영 on 2022/09/09.
//

import Foundation
import Fluent
import Vapor

final class Message: Model, Content {
    
    static let schema = "Message"
    
    @ID(key: .id)
    var id: UUID?
    
    @Field(key: "user")
    var user: User
    
    @Field(key: "content")
    var content: String
    
    @Field(key: "date")
    var date: Date
    
    @Field(key: "state")
    var state: State
    
    init() {}
    
    init(user: User, content: String, date: Date, state: State) {
        self.id = UUID()
        self.user = user
        self.content = content
        self.date = date
        self.state = state
    }
}
