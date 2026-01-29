//
//  ChatInputModel.swift
//  aiya
//
//  Created by Dmitry Uchkin on 23.01.2026.
//

import Foundation
import Combine
import UIKit

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
        if message.text.isEmpty {
            return
        }
        messages.append(message)
        text = ""
    }
    func deleteMessage(_ messageToDelete: ChatMessage) {
        messages.removeAll {
            $0.id == messageToDelete.id
        }
    }
    func copyMessage(_ messageToCopy: ChatMessage) {
        UIPasteboard.general.string = messageToCopy.text
    }
    func senderMessagee() {
        let message = ChatMessage(text: "huiasdljhagdashglkafjlaskjdlakjdasdasdasdasdasjfhaskjfhasjkdhaskjdh asdjashdjahsdjhasdjhas dhadjhasjdhasd", date: Date(), isFromMe: false)
        if message.text.isEmpty {
            return
        }
        messages.append(message)
        text = ""
    }
}
