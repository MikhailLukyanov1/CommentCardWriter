//
//  RadioButtonEWs.swift
//  CommentCardWriter
//
//  Created by MIKHAEL LUKYANOV on 08/02/2023.
//

import SwiftUI

enum EWLength: String {
    case short = "Short"
    case okay = "Okay"
    case long = "Long"
}

struct RadioButtonGroupsEW: View {
    let callback: (String) -> ()
    
    @State var selectedId: String = ""
    
    var body: some View {
        VStack {
            radioShort
            radioFine
            radioLong
        }
    }
    
    var radioShort: some View {
        RadioButtonField(
            id: EWLength.short.rawValue,
            label: EWLength.short.rawValue,
            isMarked: selectedId == EWLength.short.rawValue ? true : false,
            callback: radioGroupCallback
        )
    }
    
    var radioFine: some View {
        RadioButtonField(
            id: EWLength.okay.rawValue,
            label: EWLength.okay.rawValue,
            isMarked: selectedId == EWLength.okay.rawValue ? true : false,
            callback: radioGroupCallback
        )
    }
    
    var radioLong: some View {
        RadioButtonField(
            id: EWLength.long.rawValue,
            label: EWLength.long.rawValue,
            isMarked: selectedId == EWLength.long.rawValue ? true : false,
            callback: radioGroupCallback
        )
    }
    
    func radioGroupCallback(id: String) {
        selectedId = id
        callback(id)
    }
}

struct RadioButtonEW: View {
    var body: some View {
        HStack {
            Text("EW Length")
                .font(Font.headline)
            RadioButtonGroupsEW {
                selected in
                print("Selected Difficulty: \(selected)")
            }
        }
        .frame(minWidth: 0, maxWidth: 200, minHeight: 0, maxHeight: 100)
        .border(Color.white)

    }
}

struct RadioButtonEWs_Previews: PreviewProvider {
    static var previews: some View {
        RadioButtonEW()
    }
}
