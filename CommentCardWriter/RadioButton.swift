//
//  RadioButton.swift
//  CommentCardWriter
//
//  Created by MIKHAEL LUKYANOV on 07/02/2023.
//

import SwiftUI


struct RadioButtonField: View {
    let id: String
    let label: String
    let size: CGFloat
    let color: Color
    let textSize: CGFloat
    let isMarked:Bool
    let callback: (String)->()
    
    init(
        id: String,
        label:String,
        size: CGFloat = 20,
        color: Color = Color.black,
        textSize: CGFloat = 14,
        isMarked: Bool = false,
        callback: @escaping (String)->()
        ) {
        self.id = id
        self.label = label
        self.size = size
        self.color = color
        self.textSize = textSize
        self.isMarked = isMarked
        self.callback = callback
    }
    
    var body: some View {
        Button(action:{
            self.callback(self.id)
        }) {
            HStack(alignment: .center, spacing: 10) {
                Image(systemName: self.isMarked ? "largecircle.fill.circle" : "circle")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: self.size, height: self.size)
                Text(label)
                    .font(Font.system(size: textSize))
                Spacer()
            }.foregroundColor(self.color)
        }
        .foregroundColor(Color.white)
    }
}


// Group of radio buttons

enum Difficulty: String {
    case easy = "Easy"
    case medium = "Medium"
    case hard = "Hard"
}

struct RadioButtonGroups: View {
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






struct RadioButton: View {
    var body: some View {
        HStack {
            Text("Difficulty")
                .font(Font.headline)
            RadioButtonGroups {
                selected in
                print("Selected Difficulty: \(selected)")
            }
        }
    }
}

struct RadioButton_Previews: PreviewProvider {
    static var previews: some View {
        RadioButton()
    }
}
