//
//  RadioButtonHappiness.swift
//  CommentCardWriter
//
//  Created by Luk'yanov, Mikhail (JMOB) on 08/02/2023.
//

import SwiftUI

enum Happiness: String {
    case happy = "Happy"
    case okay = "Okay"
    case unhappy = "Unhappy"
}

struct RadioButtonGroupsHappiness: View {
    let callback: (String) -> ()
    
    @State var selectedId: String = ""
    
    var body: some View {
        VStack {
            radioEasy
            radioOkay
            radioUnhappy
        }
    }
    
    var radioEasy: some View {
        RadioButtonField(
            id: Happiness.happy.rawValue,
            label: Happiness.happy.rawValue,
            isMarked: selectedId == Happiness.happy.rawValue ? true : false,
            callback: radioGroupCallback
        )
    }
    
    var radioOkay: some View {
        RadioButtonField(
            id: Happiness.okay.rawValue,
            label: Happiness.okay.rawValue,
            isMarked: selectedId == Happiness.okay.rawValue ? true : false,
            callback: radioGroupCallback
        )
    }
    
    var radioUnhappy: some View {
        RadioButtonField(
            id: Happiness.unhappy.rawValue,
            label: Happiness.unhappy.rawValue,
            isMarked: selectedId == Happiness.unhappy.rawValue ? true : false,
            callback: radioGroupCallback
        )
    }
    
    func radioGroupCallback(id: String) {
        selectedId = id
        callback(id)
    }
}

struct RadioButtonHappiness: View {
    var body: some View {
        HStack {
            Text("Happiness")
                .font(Font.headline)
            RadioButtonGroupsHappiness {
                selected in
                print("Selected Difficulty: \(selected)")
            }
        }
        .frame(minWidth: 0, maxWidth: 200, minHeight: 0, maxHeight: 100)
        .border(Color.white)

    }
}


struct RadioButtonHappiness_Previews: PreviewProvider {
    static var previews: some View {
        RadioButtonHappiness()
    }
}
