//
//  ContentView.swift
//  CommentCardWriter
//
//  Created by Luk'yanov, Mikhail (JMOB) on 07/02/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var currentDate: Date = Date()
    @State private var subject: String = ""
    @State private var difficultyChoice: String = ""
    @State private var happinessChoice: String = ""
    @State private var EWLengthChoice: String = ""
    
    var body: some View {
        
        
        NavigationView {
            VStack() {
                VStack {
                    Text("Enter Subject: ")
                    TextField("Required", text: $subject)


                    VStack {
                        HStack {
                            Text("Difficulty   ")
                                .font(Font.headline)
                            RadioButtonGroupsDifficulty {
                                selected in
                                difficultyChoice = selected
                                print(difficultyChoice)
                            }
                        }
                        .frame(minWidth: 0, maxWidth: 200, minHeight: 0, maxHeight: 100)
                        .border(Color.white)
                        HStack {
                            Text("Happiness")
                                .font(Font.headline)
                            RadioButtonGroupsHappiness {
                                selected in
                                happinessChoice = selected
                                print(happinessChoice)
                            }
                        }
                        .frame(minWidth: 0, maxWidth: 200, minHeight: 0, maxHeight: 100)
                        .border(Color.white)
                        HStack {
                            Text("EW Length")
                                .font(Font.headline)
                            RadioButtonGroupsEW {
                                selected in
                                EWLengthChoice = selected
                                print(EWLengthChoice)
                            }
                        }
                        .frame(minWidth: 0, maxWidth: 200, minHeight: 0, maxHeight: 100)
                        .border(Color.white)
                    }
                    .padding(20)
                    
                    
                    
                }
                .textFieldStyle(.roundedBorder)
                .multilineTextAlignment(.center)
                .frame(maxHeight: .infinity, alignment: .top)
                
                
                
            }
                .navigationTitle("Comment Card Writer")
                .navigationBarTitleDisplayMode(.inline)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()

    }
}
