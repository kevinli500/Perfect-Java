//
//  DiagnosticView.swift
//  Perfect Java
//
//  Created by Michael Ross on 4/2/21.
//

import SwiftUI

struct DiagnosticView: View {
    
    var viewModel = DiagnosticViewModel()
    @State var index = 0
    @State var auditory = 0
    @State var kinesthetic = 0
    @State var verbal = 0
    @State var visual = 0
    @State var max = 0
    @State var testBegun = false
    @State var testComplete = false
    
    
    var body: some View {
        VStack {
            
            if(!testBegun) {
     
                Text("Learning Style Diagnostic")
                    .font(.title)
                    .padding()
                
                Text("The following is a quick diagnostic to determine your preferred learning style. Computer science is a very vast field, and I find that everyone has their own way of understanding and processing information. Please take this quick questionnaire if you’re interested!")
                    .padding()
                
                Spacer()
                
                Button(action: {
                    testBegun = true
                }) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10.0).stroke(Color("Light Salmon"), lineWidth: 3)
                            .frame(maxWidth: .infinity, maxHeight: 100)
                        
                        Text("Continue")
                            .padding()
                    }.padding(.horizontal)
                }.padding(.bottom)
                
            } else if (!testComplete) {
                
                ScrollView {
            
                    Text(viewModel.questions[index].text)
                        .font(.system(size: 24))
                        .padding()
                    
                    ForEach(viewModel.questions[index].answers) { answer in
                        Button(action: {
                            switch answer.learningStyle {
                                case .Auditory:
                                    auditory+=1
                                    if(auditory > max) {
                                        max = auditory
                                    }
                                    break
                                case .Kinesthetic:
                                    kinesthetic+=1
                                    if(kinesthetic > max) {
                                        max = kinesthetic
                                    }
                                    break
                                case .Verbal:
                                    verbal+=1
                                    if(verbal > max) {
                                        max = verbal
                                    }
                                    break
                                case .Visual:
                                    visual+=1
                                    if(visual > max) {
                                        max = visual
                                    }
                                    break
                                case .None:
                                    break
                            }
                            if(index < viewModel.questions.count - 1) {
                                index+=1
                            } else {
                                testComplete = true
                            }
                        }) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 10.0).stroke(Color("Light Salmon"), lineWidth: 3)
                                    .frame(maxWidth: .infinity, maxHeight: 100)
                                
                                Text(answer.text)
                                    .padding()
                            }.padding(.horizontal)
                            
                        }
                        
                    }
                }
                
                Spacer()
                
            } else {
                
                Text("Test Complete!")
                    .font(.title)
                    .padding()
                
                
                if(verbal == max) {
                    
                    Text("Verbal")
                        .padding()
                        .font(.title)
                        
                    
                    Text("You’re a verbal learner. That means you enjoy reading about information, using mnemonics to process information, and articulating information out loud to yourself.\nWhen it comes to programming, you’d be a textbook person. You would get the most value out of reading the textbook and comprehending information through text.").padding()
                    
                } else if (visual == max) {
                    
                    Text("Spatial-Visual")
                        .padding()
                        .font(.title)
                    
                    Text("You’re a spatial-visual learner. That means you like to see pictures to complement your learning. You prefer visual examples over anything else.\nWhen it comes to programming, I suggest watching visual examples of how algorithms work. You’ll probably find that visual representations work best for you when it comes to retaining information.").padding()
                    
                    
                } else if(auditory == max) {
                    
                    Text("Auditory")
                        .padding()
                        .font(.title)
                    
                    Text("You’re an auditory learner. That means you like to hear information rather than read about it. When learning programming topics, try watching videos with audio explanations.").padding()
                    
                } else if(kinesthetic == max) {
                    
                    Text("Kinesthetic")
                        .padding()
                        .font(.title)
                    
                    Text("You’re a kinesthetic learner. That means you like a hands-on approach to learning information.\nMost of programming is doesn’t involve touch. However, you would probably understand the content much easier if you draw charts and diagrams to supplement your learning process.").padding()
                    
                }
                
                Spacer()
                
                Button(action: {
                    testBegun = false
                    testComplete = false
                    auditory = 0
                    kinesthetic = 0
                    visual = 0
                    verbal = 0
                    max = 0
                    index = 0
                }) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10.0).stroke(Color("Light Salmon"), lineWidth: 3)
                            .frame(maxWidth: .infinity, maxHeight: 100)
                        
                        Text("Retake Test")
                            .padding()
                    }.padding(.horizontal)
                }.padding(.bottom)
                
            }
            
            
        }
    }
}

struct DiagnosticView_Previews: PreviewProvider {
    static var previews: some View {
        DiagnosticView()
    }
}
