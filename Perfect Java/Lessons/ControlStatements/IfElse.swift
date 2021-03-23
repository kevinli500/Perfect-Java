//
//  IfElse.swift
//  Perfect Java
//
//  Created by Michael Ross on 2/8/21.
//

import SwiftUI

struct IfElse: View {
    var body: some View {
        
        VStack (alignment: .leading) {
            
            ScrollView {
                
                Text("If/Else If")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .padding()
                
                
                Group {
                    
                    Text("""
Let’s go back to the same problem discussed in the If Statements section, but with an added twist. Now, instead of printing whether or not we pass or fail, we want to print out the letter grade corresponding to courseGrade.

We’ll use the following grade conversion:

A: 90 – 100
B: 80 – 89
C: 70 – 79
F: < 70

If courseGrade is 75, the output should be “C”. If courseGrade is 90, it should be “A”. If courseGrade is 50, it should be “F”. So on and so forth.

Let’s start off with A. If your grade is 90 or above, you get an A.
""").padding()
                    
                    CodeSnippet(text: "int courseGrade = 95;\n\nif (courseGrade >= 90)\n{\n\tSystem.out.println(“Your grade is A”);\n}").padding()
                    
                    Text("""
In the example above, courseGrade is greater than 90, which means that the if statement is true. Thus, we run whatever is inside of the if statement. The only thing inside of the statement is the print statement, so you’re going to get an output: Your grade is A. If courseGrade was not greater than 90—let’s say it was 85—then we would not run whatever is inside of the if statement, and thus we would get no output. Remember?

So, can we apply the same logic for a grade of B, a grade of C, and a grade of F? Hmm… let’s see.
""").padding()
                    
                    CodeSnippet(text: "if (courseGrade >= 90)\n{\n\tSystem.out.println(“Your grade is A”);\n}\n\nif (courseGrade >= 80)\n{\n\tSystem.out.println(“Your grade is B”);\n}\n\nif (courseGrade >= 70)\n{\n\tSystem.out.println(“Your grade is C”);\n}\nif (courseGrade < 70)\n{\n\tSystem.out.println(“Your grade is F”);\n}").padding()
                    
                    Text("""
Looks good at first glance, right? Take a look again. What do you think is wrong with this code? Take some time to think about it.

Done thinking? Alright.

Let’s assume courseGrade is 95. The output should be: Your grade is A. Let’s run through the if statements and see.
""").padding()
                    
                    CodeSnippet(text: "if (courseGrade >= 90)\n{\n\tSystem.out.println(“Your grade is A”);\n}").padding()
                    
                    Text("Okay, looks good. ").padding()
                    
                    CodeSnippet(text: "if (courseGrade >= 80)\n{\n\tSystem.out.println(“Your grade is B”);\n}").padding()
                    
                    Text("""
Whoa. Problem. courseGrade is 95. And 95 is greater than 80. So, because the boolean expression is technically true, this line of code will run. Same for the following if statements. So not only will you get the output: Your grade is A, you will also get the output: Your grade is B. And also: Your grade is C (since courseGrade >= 70)

Basically, in this case, we want to move through the if statements until we find one that’s true. And once we discover the true statement, we want out. So, we kind of need to chain these if statements together. We can do that by adding an else before subsequent if statements.

It should look something like this:
""").padding()
                    
                    CodeSnippet(text: "int courseGrade = 95;\n\nif (courseGrade >= 90)\n{\n\tSystem.out.println(“Your grade is A”);\n}\n\nelse if (courseGrade >= 80)\n{\n\tSystem.out.println(“Your grade is B”);\n}\n\nelse if (courseGrade >= 70)\n{\n\tSystem.out.println(“Your grade is C”);\n}\nelse /* If your grade isn’t 70 or higher, then you get an F */\n{\n\tSystem.out.println(“Your grade is F”);\n}").padding()
                    
                }
                
                Group {
                    
                    Text("Now these if statements are all connected. Instead of running through every if statement no matter what, now it only runs the following if statement if the previous one yielded false.").padding()
                    
                    Text("Fun Fact").bold().padding()
                    
                    Text("The if statement doesn't need braces if there is only one line of code in a specific part. Here both the true and false parts have only one line of code, so we can omit the braces:").padding()
                    
                    CodeSnippet(text: "if (condition)\n\tdo something\nelse\n\tdo something").padding()
                    
                    Text("Notice there’s an absence of curly braces. This works only if there’s one single line of code. Always use curly braces if you plan to have more than one line of code inside the statement.").padding()
                    
                    CodeSnippet(text: "if (condition)\n\tdo something\n\tdo something 2").padding()
                    
                    Text("In this case, only do something is part of the if statement. Though do something 2 also looks like it’s part of the group, it’s really not. That code above is the same thing as this:").padding()
                    
                    CodeSnippet(text: "if (condition)\n{\n\tdo something\n}\ndo something 2").padding()
                    
                    Text("It’s a nifty little shortcut but be careful!").padding()
                    
                    
                }
                
            }
            
        }
        
    }
}

struct IfElse_Previews: PreviewProvider {
    static var previews: some View {
        IfElse()
    }
}
