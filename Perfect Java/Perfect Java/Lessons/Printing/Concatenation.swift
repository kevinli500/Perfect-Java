//
//  Printf.swift
//  Perfect Java
//
//  Created by Michael Ross on 3/8/21.
//

import SwiftUI

struct Concatenation: View {
    var body: some View {

        VStack (alignment: .leading) {
            
            ScrollView {
                
                Text("Concatenation")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Group {
                    
                    Text("The + operator isn’t just for adding numbers in Java—it lets you join variables onto print statements. You know what, it’s probably much easier to just show you:").padding()
                    
                    CodeSnippet(text: "String name = “David”;\nSystem.out.println(“My name is ” + name);\n//Output: My name is David").padding()
                    
                    Text("We’re “adding” the variable name to the end of the print statement. This is known as concatenation, which is just a fancy word for joining two different strings together. In the example above, we concatenated “My name is ” and the value of the variable name (“David”).").padding()
                    
                    CodeSnippet(text: "String firstName = “David”;\nString lastName = “Jones”;\nString fullName = firstName + “ ” + lastName;\nSystem.out.println(fullName);").padding()
                    
                    Text("Here’s a longer example: String fullName concatenates the variables firstName and lastName as well as a space. When we print out fullName, we get:").padding()
                    
                    CodeSnippet(text: "David Jones").padding()
                    
                    Text("Before we move on, I want to reiterate that you need a + operator if you’re concatenating. The following example will not work:").padding()
                    
                    CodeSnippet(text: "String name = “David”;\nSystem.out.println(“My name is ” name “, nice to meet you!”);").padding()
                    
                    Text("There’s a noticeable lack of the + operator that we need to concatenate. Here’s how it’s done:").padding()
                    
                    CodeSnippet(text: "String name = “David”;\nSystem.out.println(“My name is ” + name + “, nice to meet you!”);\n//Output: My name is David, nice to meet you!").padding()
                    
                }
                
                Group {
                    
                    Text("We can concatenate more than Strings; we can also concatenate variables using the same principle.").padding()
                    
                    CodeSnippet(text: "int age = 25;\nSystem.out.println(“I am ” + age + “ years old.”);\n//Output: I am 25 years old.").padding()
                    
                    Text("And of course, if we’re working with numeric values or numeric data types, like int or double, you can do arithmetic.").padding()
                    
                    CodeSnippet(text: "System.out.println(“12 * 12 = ” + 12*12);\n//Output: 12 * 12 = 144\n\nint num = 12*12;\nSystem.out.println(“12 * 12 = ” + num);\n//Output (same as above): 12 * 12 = 144").padding()
                    
                    Text("Okay, let’s move on to a slightly trickier example. This will illustrate some of the semantics of Java.").padding()
                    
                    CodeSnippet(text: "int age = 25;\nSystem.out.println(“In 10 years I will be ” + age + 10);").padding()
                    
                    Text("Interesting. The first + is obviously concatenating “In 10 years I will be ” and age + 10. The second + is an arithmetic expression, adding 10 to the value of age. The intended output should be: ").padding()
                    
                    CodeSnippet(text: "In 10 years I will be 35").padding()
                    
                    Text("However, the actual output is").padding()
                    
                    CodeSnippet(text: "In 10 years I will be 2510").padding()
                    
                }
                
                Group {
                    
                    Text("""
What gives? If my math is accurate, if you’re 25 years old, you’ll be 35 in 10 years, not 2510. Where did that number come from?

If you’re observant, you may realize that 2510 is in fact not a random number—it’s the concatenation of the value of the variable age and 10. Java treated age + 10 literally—instead of adding 25 + 10, it just stuck 10 to the end of 25, leaving you with 2510. It concatenated the numbers, as it would for String.

This is a golden rule. The Java compiler evaluates expressions from left to right. When it encounters a String, it also considers the rest of the entire expression as a String as well, which is why 25 and 10 were concatenated instead of added. Anything before the String is still evaluated normally.

To circumvent this, put parenthesis around the arithmetic expression:
""").padding()
                    
                    CodeSnippet(text: "System.out.println(“In 10 years I will be ” + (age + 10));").padding()
                    
                    Text("Now Java knows we want to treat it as an arithmetic expression.").padding()
                    
                    CodeSnippet(text: "In 10 years I will be 35").padding()
                    
                    Text("""
Thus, when you’re using + as an arithmetic operation rather than concatenating, you should enclose the arithmetic expression with a set of parenthesis ( ). It looks a lot nicer. Also, you may encounter some strange outputs if you don’t.

I know this can be a little confusing, so here’s some additional examples.
""").padding()
                    
                    CodeSnippet(text: "System.out.println(1 + 2 + 3 + 4 + “Five”);\n/* Java reads from left to right: the integers precede the String so they are treated like ints\n\tOutput: 10Five\n*/\n\nSystem.out.println(“Five” + 1 + 2 + 3 + 4);\n/* Java reads from left to right: the ints follow the String literal “Five”, so the ints are treated as Strings and concatenated\n\tOutput: Five1234\n*/\n\nSystem.out.println(1 + 2 + 3 + 4 + “Five” + 4 + 3 + 2 + 1);\n/* The ints preceding the String are treated like ints; the ints following the String are treated as Strings and concatenated\n\tOutput: 10Five4321\n*/\n\nSystem.out.println(“Five” + (1 + 2 + 3 + 4));\n/* Parenthesis indicates to Java that it should treat it as an arithmetic expression\n\tOutput: Five10\n*/").padding()
                    
                }
                
                
            }
            
        }

    }
}

struct Concatenation_Previews: PreviewProvider {
    static var previews: some View {
        Concatenation()
    }
}
