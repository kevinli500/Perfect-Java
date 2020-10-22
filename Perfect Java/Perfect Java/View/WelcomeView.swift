//
//  WelcomeView.swift
//  Perfect Java
//
//  Created by Michael Ross on 10/22/20.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack (alignment: .leading) {
            
            ScrollView {
                
                Text("Welcome to Perfect Java! This is a free resource for you to learn Java, one of the most popular programming languages in use today. Computer scientists are in great demand today, and we wanted to provide a gateway to allow everyone to experience what it is like to code, without any ads or paywalls! This is purely a passion project and thus, we seek no profit. Learn as much as you can!\n\nThere are a variety of use cases for this app:")
                    .multilineTextAlignment(.leading)
                    .padding()
                
                HStack (alignment: .firstTextBaseline){
                    Text("\u{2022}")
                        .font(.title)
                        .padding(.leading)
                    
                    VStack (alignment: .leading) {
                        Text("A beginner's tutorial on the ins and outs of Java")
                            .bold()
                            .padding(.trailing)
                            .padding(.bottom)
                            .foregroundColor(Color("Independence"))
                        Text("This app gives you a very high-level understanding of Java, enough for you to understand the fundamentals of how the language works. With easy and simple explanations, we turn the mundane, tricky, and downright migraine-inducing aspects of Java into something concise and compact. Familiar with a different language? Trying to delve deeper into Java concepts? Never touched a programming language in your life? This is the perfect app for you.")
                            .padding(.trailing)
                    }
                }
                
                HStack (alignment: .firstTextBaseline) {
                    Text("\u{2022}")
                        .font(.title)
                        .padding(.leading)
                    VStack (alignment: .leading){
                        Text("Supplementing a high school/college programming course")
                            .bold()
                            .padding(.trailing)
                            .padding(.bottom)
                            .foregroundColor(Color("Independence"))
                        Text("I’m not going to lie, this app contains a lot of information, but if you decide to use this app as a substitute for your textbook, your grade in the class will not be very high. The textbook contains low-level concepts that we don’t cover in this app and goes deeper in content (though I can say confidently that it’s much more boring than our app). However, using this app to supplement the textbook is very encouraged, since most of the lessons on here are based off of the AP Computer Science curriculum. A recommended resource for high school students taking a Java programming course, or a college student taking an introductory Java course.")
                            .padding(.trailing)
                    }
                }
                
                HStack (alignment: .firstTextBaseline) {
                
                    Text("\u{2022}")
                        .font(.title)
                        .padding(.leading)
                    VStack (alignment: .leading) {
                        Text("Cram material for those taking the UIL Computer Science Exam")
                            .bold()
                            .padding(.trailing)
                            .padding(.bottom)
                            .foregroundColor(Color("Independence"))
                        Text("This is a niche group, but this app was originally created as a practice tool for prospective UIL Computer Science competitors before we ambitiously decided to expand the target audience to… well… the world. However, this app is sponsored by The University of Texas at Austin, who hosts the competition annually. We try to cover all the common (and uncommon) topics the written exam tests you on. This app was created by former State competitors, so you’re in good hands.")
                            .padding(.trailing)
                    }
                    
                }
                
                Text("Well, that’s all we have to say, so there’s only one thing left to do… start learning! We truly hope you enjoy this app and learn some Java out of it! It’s made with love and care.")
                    .padding()
                
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
