//
//  ChatWindowView.swift
//  aiya
//
//  Created by Dmitry Uchkin on 23.01.2026.
//

import SwiftUI

struct ChatWindowView: View {
    @StateObject var model = ChatInputModel()
    var body: some View {
        List(model.messages) { message in
            Text(message.text)
        }
    }
}

#Preview {
    ChatWindowView()
}
