//
//  InputBarView.swift
//  aiya
//
//  Created by Dmitry Uchkin on 13.01.2026.
//

import SwiftUI

struct InputBarView: View {
    @StateObject var model = ChatInputModel()
    @State var inputGrey = Color("InputGrey")
    var body: some View {
        HStack(spacing: 0) {
            TextField("Enter message", text: $model.text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
            Button(action: model.senderMessage) {
                Image(systemName: "arrow.up.circle.fill")
                    .font(.title)
            }
            .padding(.trailing, 5)
        }
        .padding(.vertical, 8)
        .background(inputGrey)
    }
    func sendMessage() {
        print("Sending: \(model.text)")
        model.text = ""
        }
}
