//
//  Primitive01.swift
//  Perfect Java
//
//  Created by Michael Ross on 11/6/20.
//

import SwiftUI

struct Primitive: View {
    
    var body: some View {
        
        ScrollView {
            Primitive01()
            Primitive02()
        }
        
        
    }

    struct Primitive01: View {
        var body: some View {
            VStack {
                Text("Primitive Data Types")
                    .font(.title)
                    .padding()
                Text("Primitive data types are the most basic data types available within the Java language. Think of them as the building blocks of Java.\n\nThese data types are predefined within Java—meaning that there are a lot of very cool operations you can do with them. You will learn many of those operations in due time!")
                    .padding()
            }
        }
    }
    
    
    struct Primitive02: View {
        
        
        @State var infoRow1: Bool = false
        @State var infoRow2: Bool = false
        @State var infoRow3: Bool = false
        @State var infoRow4: Bool = false
        
        @State var rowOneText: String = ""
        @State var rowTwoText: String = ""
        @State var rowThreeText: String = ""
        @State var rowFourText: String = ""
        
        var body: some View {
            
            VStack {
                Text("There are eight primitive data types.\nTap on a data type to learn more about it.")
                    .padding()
                    .frame(minWidth:0, maxWidth: .infinity)
                
                
                HStack {
                    Spacer()
                    Button(action: {
                        infoRow1.toggle()
                        infoRow2 = false
                        infoRow3 = false
                        infoRow4 = false
                    }) {
                        InfoButton(text: "boolean", offset: 82)
                    }
                    Spacer()
                    Button(action: {
                        infoRow1.toggle()
                        infoRow2 = false
                        infoRow3 = false
                        infoRow4 = false
                    }) {
                        InfoButton(text: "byte", offset: 82)
                    }
                    Spacer()
                }.padding(.vertical)
                if(infoRow1) {
                    Text(rowOneText)
                }
                HStack {
                    Spacer()
                    Button(action: {
                        infoRow1 = false
                        infoRow2.toggle()
                        infoRow3 = false
                        infoRow4 = false
                    }) {
                        InfoButton(text: "char", offset: 82)
                    }
                    Spacer()
                    Button(action: {
                        infoRow1 = false
                        infoRow2.toggle()
                        infoRow3 = false
                        infoRow4 = false
                    }) {
                        InfoButton(text: "short", offset: 82)
                    }
                    Spacer()
                }.padding(.vertical)
                if(infoRow2) {
                    Text(rowTwoText)
                }
                HStack {
                    Spacer()
                    Button(action: {
                        infoRow1 = false
                        infoRow2 = false
                        infoRow3.toggle()
                        infoRow4 = false
                    }) {
                        InfoButton(text: "int", offset: 82)
                    }
                    Spacer()
                    Button(action: {
                        infoRow1 = false
                        infoRow2 = false
                        infoRow3.toggle()
                        infoRow4 = false
                    }) {
                        InfoButton(text: "long", offset: 82)
                    }
                    Spacer()
                }.padding(.vertical)
                if(infoRow3) {
                    Text(rowThreeText)
                }
                HStack {
                    Spacer()
                    Button(action: {
                        infoRow1 = false
                        infoRow2 = false
                        infoRow3 = false
                        infoRow4.toggle()
                    }) {
                        InfoButton(text: "float", offset: 82)
                    }
                    Spacer()
                    Button(action: {
                        infoRow1 = false
                        infoRow2 = false
                        infoRow3 = false
                        infoRow4.toggle()
                    }) {
                        InfoButton(text: "double", offset: 82)
                    }
                    Spacer()
                }.padding(.vertical)
                if(infoRow4) {
                    Text(rowFourText)
                }
                Spacer()
            }
            
        }
    }
}

struct Primitive_Previews: PreviewProvider {
    static var previews: some View {
        //TabView {
        ScrollView {
            Primitive.Primitive01()
            Primitive.Primitive02()
        }
        //}
        //.tabViewStyle(PageTabViewStyle())
        //.indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}

struct BooleanView: View {
    var body: some View {
        EmptyView()
    }
}
