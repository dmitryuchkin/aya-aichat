//
//  EditMessageModel.swift
//  aiya
//
//  Created by Dmitry Uchkin on 28.01.2026.
//

import Foundation
import Combine

class EditMessageModel: Identifiable {
    @Published var text: String = ChatInputModel().text
    
    func editMessage(with text: String) {
        self.text = text
    }
}
