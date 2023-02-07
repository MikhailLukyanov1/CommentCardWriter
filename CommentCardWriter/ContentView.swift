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
    @State private var strengths: String = ""
    @State private var weaknesses: String = ""
    
    var body: some View {
        
        
        NavigationView {
            VStack() {
                VStack {
                    Text("Enter Subject: ")
                    TextField("Required", text: $subject)
                    Text("Enter Strengths: ")
                    TextField("Required", text: $strengths)
                    Text("Enter Weaknesses: ")
                    TextField("Required", text: $weaknesses)
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
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}
