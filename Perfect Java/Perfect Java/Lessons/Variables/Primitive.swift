//
//  Primitive01.swift
//  Perfect Java
//
//  Created by Michael Ross on 11/6/20.
//

import SwiftUI

struct Primitive {
    
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
        var body: some View {
            
            VStack {
                Text("There are eight primitive data types.\nTap on a data type to learn more about it.")
                    .padding()
                    .frame(minWidth:0, maxWidth: .infinity)
                
                
                HStack {
                    InfoButton(text: "boolean", offset: 82)
                    InfoButton(text: "byte", offset: -82)
                }.padding(.vertical)
                //Spacer()
                HStack {
                    InfoButton(text: "char", offset: 82)
                    InfoButton(text: "short", offset: -82)
                }.padding(.vertical)
                
                //Spacer()
                HStack {
                    InfoButton(text: "int", offset: 82)
                    InfoButton(text: "long", offset: -82)
                }.padding(.vertical)
                //Spacer()
                HStack {
                    InfoButton(text: "float", offset: 82)
                    InfoButton(text: "double", offset: -82)
                }.padding(.vertical)
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
