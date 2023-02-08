//
//  RadioButton.swift
//  CommentCardWriter
//
//  Created by MIKHAEL LUKYANOV on 07/02/2023.
//

import SwiftUI

// Group of radio buttons

enum Difficulty: String {
    case easy = "Easy"
    case medium = "Medium"
    case hard = "Hard"
}

struct RadioButtonGroupsDifficulty: View {
    let callback: (String) -> ()
    
    @State var selectedId: String = ""
    
    var body: some View {
        VStack {
            radioEasy
            radioMedium
            radioHard
        }
    }
    
    var radioEasy: some View {
        RadioButtonField(
            id: Difficulty.easy.rawValue,
            label: Difficulty.easy.rawValue,
            isMarked: selectedId == Difficulty.easy.rawValue ? true : false,
            callback: radioGroupCallback
        )
    }
    
    var radioMedium: some View {
        RadioButtonField(
            id: Difficulty.medium.rawValue,
            label: Difficulty.medium.rawValue,
            isMarked: selectedId == Difficulty.medium.rawValue ? true : false,
            callback: radioGroupCallback
        )
    }
    
    var radioHard: some View {
        RadioButtonField(
            id: Difficulty.hard.rawValue,
            label: Difficulty.hard.rawValue,
            isMarked: selectedId == Difficulty.hard.rawValue ? true : false,
            callback: radioGroupCallback
        )
    }
    
    func radioGroupCallback(id: String) {
        selectedId = id
        callback(id)
    }
}







struct RadioButtonDifficulty: View {
    @State private var difficultyChoice: String = ""
    var body: some View {
        HStack {
            Text("Difficulty   ")
                .font(Font.headline)
            RadioButtonGroupsDifficulty {
                selected in
                print("Selected Difficulty: \(selected)")
                difficultyChoice = selected
                print(difficultyChoice)
            }
        }
        .frame(minWidth: 0, maxWidth: 200, minHeight: 0, maxHeight: 100)
        .border(Color.white)

    }
}

struct RadioButton_Previews: PreviewProvider {
    static var previews: some View {
        RadioButtonDifficulty()
    }
}
