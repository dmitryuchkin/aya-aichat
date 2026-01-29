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
        ForEach(model.messages) { message in
            HStack {
                if message.isFromMe {
                    HStack {
                        Spacer()
                        Text(message.text)
                            .padding(10)
                            .background(Color.gray)
                            .cornerRadius(10)
                            .foregroundColor(.black)
                        Text(message.date, style: .time)
                            .font(.system(size: 9))
                    }
                } else {
                    
                    VStack {
                        HStack {
                            Text(message.text)
                                .padding(10)
                                .cornerRadius(10)
                                .foregroundColor(.black)
                            Text(message.date, style: .time)
                                .font(.system(size: 9))
                            
                            Spacer()
                        }
                        HStack(spacing: 10) {
                            Button(action: {
                                model.deleteMessage(message)
                            }) {
                                Image(systemName: "trash")
                                    .font(.system(size: 12))
                                    .foregroundColor(.red)
                            }
                            .frame(alignment: .leading)
                            Button(action: {
                                model.copyMessage(message)
                            }) {
                                Image(systemName: "clipboard")
                                    .font(.system(size: 12))
                                    .foregroundColor(.red)
                            }
                            .frame(alignment: .leading)
                            ShareLink(
                                item: URL(string: "https://www.aya-chat.com")!,
                                subject: Text(message.text),
                            )
                            .labelStyle(.iconOnly)
                            .font(.system(size: 12))
                            .foregroundColor(.red)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 10)
                    }
                }
            }
        }
    }
}

#Preview {
    ChatWindowView()
}
