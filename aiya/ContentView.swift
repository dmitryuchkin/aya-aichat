//
//  ContentView.swift
//  aiya
//
//  Created by Dmitry Uchkin on 13.01.2026.
//

import SwiftUI

struct ContentView: View {
    @StateObject var vm = ChatInputModel()
    var body: some View {
        VStack {
            ChatWindowView(model: vm)
            Spacer()
            InputBarView(model: vm)
        }
    }
}

#Preview {
    ContentView()
}
