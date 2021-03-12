//
//  Strings.swift
//  Perfect Java
//
//  Created by Michael Ross on 2/8/21.
//

import SwiftUI

struct Strings: View {
    var body: some View {
        VStack (alignment: .leading) {
            
            ScrollView {
                
                Group {
                    
                    Text("Introduction to Strings")
                        .font(.title)
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    Text("""
    Hey there. Welcome to an introduction on one of the most useful data types, the String.

    Strings are not too difficult to understand or use, but they can get tricky later on when we get deeper and deeper into the semantics of Java. This is a gentle introduction to what Strings are and how they work, perfect for the beginner coder. By the end of this lesson, you’ll have a high-level explanation on how Strings work, as well as how to declare and initialize one.

    So… what exactly is a String?

    Simply put, a String is a sequence of characters. Recall that a character (char) is a single letter, digit, symbol, or space. A String is just a collection of those. For example, consider the string "Apple", which is actually a combination of five chars:
""").padding()
                    
                    HStack {
                        Text("A")
                            .padding()
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                        Text("p")
                            .padding()
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                        Text("p")
                            .padding()
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                        Text("l")
                            .padding()
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                        Text("e")
                            .padding()
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                        
                    }
                    
                    Text("Similarly, the String “cat” is actually three chars:").padding()
                    
                    HStack {
                        Text("c")
                            .padding()
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                        Text("a")
                            .padding()
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                        Text("t")
                            .padding()
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    }
                    
                    Text("And the String \"A pen\" is actually five chars:").padding()
                    
                    HStack {
                        Text("A")
                            .padding()
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                        Text(" ")
                            .padding()
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                        Text("p")
                            .padding()
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                        Text("e")
                            .padding()
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                        Text("n")
                            .padding()
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                        
                    }
                    
                    Text("""
(remember, a space is also a char!)



    A String is a data type—but it is not a primitive data type. Primitive data types represent the most basic data types—the building blocks of Java, so to speak. A String is a sequence of chars, so we would not consider it a basic data type, thus making it a non-primitive data type.

    Alright, cool. So, what does this mean?

    Well, for one thing, that means Strings work a little differently than your typical primitive data type. In Java, a String is actually an object, part of the java.lang.String class, and if you don’t know what that means—don’t worry about it. When the time comes, you’ll learn all about objects and how they work. But for now, just understand that because Strings are an object and are part of the java.lang.String class, they have a lot of cool, built-in functionality that you can mess around with. That’s beyond the scope of this lesson, but we’ll cover it in a future one.

    Anyways, enough talk. Let’s declare and initialize a String:
""").padding()
                    
                    CodeSnippet(text: "//Java is case-sensitive! String and string are NOT the same!//\n\nString greetings = \"Hello world!\";\nSystem.out.println(greetings);").padding()
                
                Text("""
    We’ve declared a String variable with the name greetings and initialized it with the value “Hello world!” Pretty easy, right? For the terminology lovers, we’ve just created what’s known as a string literal.

    Here are some important things to remember:
""").padding()
                    
                }
                
                VStack (alignment: .leading){
                
                    HStack (alignment: .firstTextBaseline){
                        Text("\u{2022}")
                            .font(.title)
                            .padding(.leading)
                            Text("When declaring a String variable, remember that its first letter is capitalized. This matters because Java is case-sensitive.")
                                .padding(.trailing)
                    }
                    
                    HStack (alignment: .firstTextBaseline){
                        Text("\u{2022}")
                            .font(.title)
                            .padding(.leading)
                            Text("We wrapped the String value, \"Hello world!\" in quotes. When creating a String literal, make sure to wrap your text with quotation marks!")
                                .padding(.trailing)
                    }
                    
                    HStack (alignment: .firstTextBaseline){
                        Text("\u{2022}")
                            .font(.title)
                            .padding(.leading)
                            Text("A String can be printed just like any other variable. Just stick the variable in a print statement and you’re good to go!")
                                .padding(.trailing)
                    }

                }
                
            }
            
        }
    }
}

struct Strings_Previews: PreviewProvider {
    static var previews: some View {
        Strings()
    }
}
