//
//  Comment.swift
//  CommentCardWriter
//
//  Created by Luk'yanov, Mikhail (JMOB) on 21/02/2023.
//

import Foundation

class Comment {
    
    var comment: String
    var subject: String
    var diff: String
    var happ: String
    var EWLen: String
    
    init(sub: String, difficulty: String, happiness: String, EWLength: String) {
        comment = ""
        subject = sub
        diff = difficulty
        happ = happiness
        EWLen = EWLength
    }

    
    func generateComment() -> String {
        self.comment = ""
        self.comment += "I feel like \(self.subject) is "
        if self.diff == "Easy" {
            self.comment += "quite easy for me."
        }
        else if self.diff == "Medium" {
            self.comment += "going okay for me."
        }
        else if self.diff == "Hard" {
            self.comment += "chalenging for me."
        }
        
        if self.happ == "Happy" {
            self.comment += " I am happy with the topics we have covered."
        }
        else if self.happ == "Okay" {
            self.comment += " I am comfortable with the topics we have covered."
        }
        else if self.happ == "Unhappy" {
            self.comment += " I found the topics we have covered hard."
        }
        
        if self.EWLen == "Short" {
            self.comment += " The EWs so far have been short."
        }
        else if self.EWLen == "Okay" {
            self.comment += " The EWs so far have been a good length."
        }
        else if self.EWLen == "Long" {
            self.comment += " The EWs so far have been long."
        }

        return self.comment
    }
}
