//
//  ChatInputModel.swift
//  aiya
//
//  Created by Dmitry Uchkin on 23.01.2026.
//

import Foundation
import Combine

struct ChatMessage: Identifiable {
    let id = UUID()
    let text: String
    let date: Date
    let isFromMe: Bool
}

class ChatInputModel: ObservableObject {
    @Published var text: String = ""
    @Published var messages: [ChatMessage] = []
    
    func senderMessage() {
        let message = ChatMessage(text: text, date: Date(), isFromMe: true)
        messages.append(message)
        text = ""
    }
}
