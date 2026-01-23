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
            InputBarView(model: vm)
        }
    }
}

#Preview {
    ContentView()
}
