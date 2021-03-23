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
        
        @State var boolean: Bool = false
        @State var byte: Bool = false
        @State var char: Bool = false
        @State var short: Bool = false
        @State var int: Bool = false
        @State var long: Bool = false
        @State var float: Bool = false
        @State var double: Bool = false
        
        @State var rowOneText: String = ""
        @State var rowTwoText: String = "Char represents any single character, whether it be a letter, digit, symbol or space, so long as it is singular. Chars in Java are declared with single quotes (‘ ’)"
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
                        boolean.toggle()
                        byte = false
                        char = false
                        short = false
                        int = false
                        long = false
                        float = false
                        double = false
                    }) {
                        InfoButton(text: "boolean", offset: 82)
                    }
                    Spacer()
                    Button(action: {
                        boolean = false
                        byte.toggle()
                        char = false
                        short = false
                        int = false
                        long = false
                        float = false
                        double = false
                    }) {
                        InfoButton(text: "byte", offset: 82)
                    }
                    Spacer()
                }.padding(.vertical)
                if(boolean || byte) {
                    Text(rowOneText)
                }
                HStack {
                    Spacer()
                    Button(action: {
                        boolean = false
                        byte = false
                        char.toggle()
                        short = false
                        int = false
                        long = false
                        float = false
                        double = false
                    }) {
                        InfoButton(text: "char", offset: 82)
                    }
                    Spacer()
                    Button(action: {
                        boolean = false
                        byte = false
                        char = false
                        short.toggle()
                        int = false
                        long = false
                        float = false
                        double = false
                    }) {
                        InfoButton(text: "short", offset: 82)
                    }
                    Spacer()
                }.padding(.vertical)
                if(char || short) {
                    Text(rowTwoText).padding()
                    Text("//Declares a char with the value ‘A’ \nchar firstNameInitial = ‘A’;\n//Declares a char with the value ‘5’\nchar onesDigit = ‘5’;\n//Declares a char with the value ‘*’\nchar asterisk = ‘*’;")
                        .background(Color("White Smoke"))
                        .font(.system(size: 14 , design: .monospaced))
                }
                HStack {
                    Spacer()
                    Button(action: {
                        boolean = false
                        byte = false
                        char = false
                        short = false
                        int.toggle()
                        long = false
                        float = false
                        double = false
                    }) {
                        InfoButton(text: "int", offset: 82)
                    }
                    Spacer()
                    Button(action: {
                        boolean = false
                        byte = false
                        char = false
                        short = false
                        int = false
                        long.toggle()
                        float = false
                        double = false
                    }) {
                        InfoButton(text: "long", offset: 82)
                    }
                    Spacer()
                }.padding(.vertical)
                if(int || long) {
                    Text(rowThreeText)
                }
                HStack {
                    Spacer()
                    Button(action: {
                        boolean = false
                        byte = false
                        char = false
                        short = false
                        int = false
                        long = false
                        float.toggle()
                        double = false
                    }) {
                        InfoButton(text: "float", offset: 82)
                    }
                    Spacer()
                    Button(action: {
                        boolean = false
                        byte = false
                        char = false
                        short = false
                        int = false
                        long = false
                        float = false
                        double.toggle()
                    }) {
                        InfoButton(text: "double", offset: 82)
                    }
                    Spacer()
                }.padding(.vertical)
                if(float || double) {
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
