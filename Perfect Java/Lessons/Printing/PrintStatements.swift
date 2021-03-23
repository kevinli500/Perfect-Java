//
//  PrintAndPrintln.swift
//  Perfect Java
//
//  Created by Michael Ross on 3/8/21.
//

import SwiftUI

struct PrintStatements: View {
    var body: some View {
        VStack (alignment: .leading) {
            
            ScrollView {
            
                Text("Print Statements")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Group {
                    
                    Text("""
The first thing we are going to learn in Java is how to print to the console. You can’t do much as a beginner programmer if you don’t know how to print! It’s not difficult. I promise.

Let’s get started:

In Java, we print using the command:
""").padding()
                    CodeSnippet(text: "//Put whatever you want to print inside the parenthesis//\n\nSystem.out.println();")
                    
                    Text("""
This is the one of the most compiled statements in all of Java. Printing is absolutely essential. Everyone loves printing. Everyone needs printing. And fortunately, you can do it with one simple line.

Let’s try and print something out. We’ll print out a classic “Hello, World!” For those of you who don’t know, most programmers, when learning syntax for a brand-new language, like to print a simple “Hello, World!” to make sure they got the very basics down. Let’s make our first line of code:
""").padding()
                    
                    CodeSnippet(text: "System.out.println(\"Hello, World!\");").padding()
                    
                    Text("""
Once you compile, you should see the text appear on the console. Pretty easy!

If you are observant, you may have realized that inside the print statement, we put quotes around the text. This is necessary if you’re trying to print text out to the console!

You can use multiple print statements, of course. With System.out.println(), the console automatically goes on to the next line after the text is printed. Here, let me show you:
""").padding()
                    
                    CodeSnippet(text: "System.out.println(“Hello”);\nSystem.out.println(“World!”);").padding()
                    
                    Text("The console first prints “Hello” and then automatically jumps to the next line. Then it prints “World!” and automatically jumps to the next line (but since we’re not printing anything else, that doesn’t really matter). Thus, the output will look like:").padding()
                    
                    CodeSnippet(text: "Hello\nWorld!").padding().multilineTextAlignment(.leading)
                    
                    Text("""
You may be wondering, “Okay, that’s cool and all, but is it possible to have it not automatically jump to the next line every time it prints out text?

The cheeky answer is “yes, just put it all in one print statement.”

The educational answer is “yes, use System.out.print()”

System.out.print() is the little brother of System.out.println(). Don’t be scared, because you would do the same thing as you would with System.out.println()—simply just stick your desired text inside the parenthesis and wrap it with quotes.
""").padding()
                    
                    CodeSnippet(text: "//Output: Hello, World!//\n\nSystem.out.print(\"Hello, World!\");").padding()
                    
                }
                
                Group {
                    
                    Text("The difference between the two is that System.out.print() does not automatically jump to the next line. If you use multiple System.out.print() statements, it will keep printing in the same line. Let’s revisit the example above: ").padding()
                    
                    CodeSnippet(text: "System.out.print(“Hello”);\nSystem.out.print(\"World!\");")
                    
                    Text("Notice in this example, we’re using System.out.print(). Since System.out.print() doesn’t automatically jump to the next line, the output would look like:").padding()
                    
                    CodeSnippet(text: "HelloWorld!").padding()
                    
                    Text("Feel free to mess around with a mixture of print() and println() statements to get a general feel of how printing works in Java!").padding()
                }
                
            }
            
        }
    }
}

struct PrintStatements_Previews: PreviewProvider {
    static var previews: some View {
        PrintStatements()
    }
}
