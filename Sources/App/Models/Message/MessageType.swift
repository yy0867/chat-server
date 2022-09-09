//
//  MessageType.swift
//  
//
//  Created by 김세영 on 2022/09/09.
//

import Foundation

extension Message {
    
    enum State: String, Codable {
        case enter
        case leave
        case text
        case editing
        case notEditing
    }
}
