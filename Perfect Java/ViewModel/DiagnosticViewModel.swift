//
//  DiagnosticViewModel.swift
//  Perfect Java
//
//  Created by Michael Ross on 4/2/21.
//

import Foundation



class DiagnosticViewModel {
    
    init(){}
    
    var questions: [Question] = [
    
        Question(answers: [
            Answer(learningStyle: .Visual, text: "I prefer to listen to an instructor audibly communicate information."),
            Answer(learningStyle: .Auditory, text: "I prefer a visual representation of information such as charts, graphs, etc."),
            Answer(learningStyle: .Kinesthetic, text: "I prefer a hands-on approach to learning where I can physically interact with the content"),
            Answer(learningStyle: .None, text: "No Preference")
        ], text: "Which of these methods of learning do you prefer?"),
        
        Question(answers: [
            Answer(learningStyle: .Visual, text: "A visualization of an apple"),
            Answer(learningStyle: .Auditory, text: "Verbalizing the word \"apple\""),
            Answer(learningStyle: .Kinesthetic, text: "Pairing the word \"apple\" in an analogous maner (apple -> fruit or apple -> teacher")
        ], text: "What is the first thing in your mind when you see the word \"apple\"?"),
        
        Question(answers: [
            Answer(learningStyle: .Auditory, text: "Rote memorization (repeat information to yourself audibly)"),
            Answer(learningStyle: .Kinesthetic, text: "Create flash cards (and maybe some mnemonics)"),
            Answer(learningStyle: .Verbal, text: "Reread your notes and textbook"),
            Answer(learningStyle: .Visual, text: "Watch interactive visuals that contextualize historical events and their significance")
        ], text: "You're memorizing facts for a history exam. What do you do?"),
        
        Question(answers: [
            Answer(learningStyle: .Verbal, text: "Search the internet for textual information on the country’s demographic, geography, culture, etc."),
            Answer(learningStyle: .Visual, text: "Watch videos about the country"),
            Answer(learningStyle: .Kinesthetic, text: "Find a person you know that has visited the country before and ask them"),
            Answer(learningStyle: .None, text: "None of the above")
        ], text: "In your geography class, you are tasked with creating a detailed report on a country. What is the first idea that pops into your mind?"),
        
        Question(answers: [
            Answer(learningStyle: .Auditory, text: "Try and recall the last time the teacher mentioned it in a lecture"),
            Answer(learningStyle: .Verbal, text: "Try and recall the last time you found this topic in your notes/textbook"),
            Answer(learningStyle: .Kinesthetic, text: "Try and recall the last time you did something actively related to this topic"),
            Answer(learningStyle: .Visual, text: "Try and recall the last visual you created regarding this topic")
        ], text: "You’re taking a test, and you’re stuck on a question. You know the topic—vaguely—but you definitely remember seeing it somewhere before. What do you do next?"),
        
        Question(answers: [
            Answer(learningStyle: .Auditory, text: "Explain the rules of the game and show them each individual piece and describe their function"),
            Answer(learningStyle: .Visual, text: "Show them a video of two players playing chess"),
            Answer(learningStyle: .Kinesthetic, text: "Play a game with them and explain the rules as you go along"),
            Answer(learningStyle: .Verbal, text: "Give them a rulebook and let them fiddle around with the board and pieces")
        ], text: "Your friend asks you to explain to him the rules of chess. What do you do?"),
        
        Question(answers: [
            Answer(learningStyle: .Verbal, text: "Compiling research from books and the internet"),
            Answer(learningStyle: .Visual, text: "Creating visuals"),
            Answer(learningStyle: .Kinesthetic, text: "Creating models"),
            Answer(learningStyle: .Auditory, text: "Presenter"),
            Answer(learningStyle: .None, text: "Freeloader")
        ], text: "What is your preferred role in a group assignment?")
    
    ]
    
}


struct Question {
    
    var answers: [Answer]
    
    var text: String
}


struct Answer: Identifiable {
    
    var id = UUID()
    
    enum LearningStyle {
        case Auditory, Kinesthetic, Verbal, Visual, None
    }
    
    var learningStyle: LearningStyle
    
    var text: String
    
}
