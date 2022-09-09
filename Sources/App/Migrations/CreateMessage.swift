//
//  CreateMessage.swift
//  
//
//  Created by 김세영 on 2022/09/09.
//

import Foundation
import Fluent

struct CreateMessage: Migration {
    func prepare(on database: Database) -> EventLoopFuture<Void> {
        return database.schema(Message.schema)
            .id()
            .field("user", .custom(User.self), .required)
            .field("content", .string, .required)
            .field("date", .datetime, .required)
            .field("state", .custom(Message.State.self), .required)
            .create()
    }
    
    func revert(on database: Database) -> EventLoopFuture<Void> {
        return database.schema(Message.schema).delete()
    }
}
