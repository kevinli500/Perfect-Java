//
//  If.swift
//  Perfect Java
//
//  Created by Michael Ross on 2/8/21.
//

import SwiftUI

struct If: View {
    var body: some View {

        VStack (alignment: .leading) {
            
            ScrollView {
                
                Text("If Statements")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Group {
                    
                    Text("""
Let’s say that you have an int called courseGrade. It represents the grade you got in a certain course. The range is 0 – 100 (we’ll assume no extra credit).

Now, let’s say I ask you to print out whether or not you’re passing the class. Let’s say a score of 70 or above is passing. Anything below that is a failing grade. So, for example, if courseGrade is 85, you pass. If courseGrade is 50, you fail, etc.

This is certainly tricky. For starters, what’s being outputted depends on the value of courseGrade, which can be whatever the user wants. What should we do when there is a relationship between variable and output?

With that question in mind, I introduce you to… the if statement:
""").padding()

                    CodeSnippet(text: "if (statement)\n{\n\tdo something;\n}").padding()
                    
                    Text("Yeah, okay, so that was a bit melodramatic. But let’s dissect the statement line by line before we go and plug anything into it:").padding()
                    
                    CodeSnippet(text: "if (statement)").padding()
                    
                    Text("""
First things first: you may have noticed something interesting.

This line doesn’t end with a semicolon.

The initial declaration of a control statements and loops usually don’t include a semicolon. Consider this a rare exception!

The statement embedded within the if statement is known as the condition. The condition is usually a boolean expression (I’ll be using boolean expression and condition interchangeably when discussing if statements and loops), meaning it must either be true or false. Here’s some examples of boolean expressions below:
""").padding()
                    
                    CodeSnippet(text: "int num1 = 5;\nint num2 = 10;\n\nSystem.out.println(num1 > num2);\n/* Here’s an example of a boolean expression evaluating whether or not num1 is greater than num2. It is, so the output is true. */\n\nSystem.out.println(num1 + 5 >= num2);\n/* Is num1 + 5 greater than or equal to (expressed as “>=”) num2? Well, num1 + 5 is 10 and num2 is 10, so they are equal. Output is true. */\n\nSystem.out.println(num1 == num2);\n/* Equivalence is expressed with “==”. Remember that “=” represents initialization. In this case, we’re not setting num1 equal to num2, we’re checking to see if they are equal. To do that, we use “==” */\n\nboolean b = num1 > num2;\n/* What do you think is the current value of b? Answer: false */").padding()
                    
                    Text("Since boolean expressions evaluate to either true or false, they can’t be standalone. It wouldn’t make much sense.").padding()
                    
                    CodeSnippet(text: "int num1 = 5;\n\n//The line below will give an error!\nnum1 > 1;").padding()
                    
                    Text("The difference between = and == may get you at first, but with some practice you’ll be able to differentiate the two, easy as pie.").padding()
                    
                    CodeSnippet(text: "int num1 = 5;\n//= is to initialize or assign values!\n\nSystem.out.println(num1 == 5)\n//== is to compare values!").padding()
                    
                }
                
                Group {
                    
                    Text("Anyways, back to the if statement:").padding()
                    
                    CodeSnippet(text: "if (boolean expression)\n{\n\tdo something if expression is true\n}").padding()
                    
                    Text("""
If the boolean expression inside the if statement evaluates to true, we run whatever is inside of the if statement (whatever is enclosed inside of the curly braces). If the boolean expression evaluates to false, we do not run whatever is inside of the if statement and move on.

Let’s go back to our question above. We want to print out whether courseGrade is passing or not. If your grade is 70 or above, you pass.
""").padding()
                    
                    CodeSnippet(text: "int courseGrade = 95;\n\nif (courseGrade >= 70)\n{\n\tSystem.out.println(“You pass”);\n}").padding()
                    
                    Text("""
In the example above, courseGrade is greater than 70, which means that the if statement is true. Thus, we run whatever is inside of the if statement. The only thing inside of the statement is the print statement, so you’re going to get an output: You pass. If courseGrade was not greater than or equal to 70—let’s say it was 65—then we would not run whatever is inside of the if statement, and thus we would get no output.

But hold on—we want to notify the user if the grade is failing. As of right now, there’s no output if the courseGrade is a failing grade. How can we change that?

One way is to make another if statement, like so:
""").padding()

                    CodeSnippet(text: "int courseGrade = 95;\n\nif (courseGrade >= 70)\n{\n\tSystem.out.println(“You pass”);\n}\nif (courseGrade < 70)\n{\n\tSystem.out.println(“You fail”);\n}").padding()
                    
                    Text("""
This technically works. However, it can be simplified. In this scenario, there’s only two options: either your score is a passing score, or your score is a failing score. If courseGrade >= 70 is false, we know that the score is not a passing score, and thus a failing score. There are only two options, after all.

For situations like those, you can attach an else. If the boolean expression in the if statement is false, then it will run whatever is inside the else statement.
""").padding()
                    
                    CodeSnippet(text: "int courseGrade = 50;\n\nif (courseGrade >= 70)\n{\n\tSystem.out.println(“You pass”);\n}\nelse\n{\n\tSystem.out.println(“You fail”);\n}\n\n/* Fun fact: You can omit the curly braces { } if you only have one line inside your if/else statements */").padding()
                    
                    Text("""
In this case, the boolean expression in the if statement is false (50 is not greater or equal to 70), so we jump to the else statement. Thus, our output is: You fail.

You can have an if statement without an else statement, but not the other way around!
""").padding()
                    
                }
                
                Text("? : - The Shorthand Method of If Statements")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Group {
                    
                    Text("""
Occasionally you may see code with a question mark (?) and a colon (:). This is a common way of shortening if-else statements to just one single line and is known as the conditional operator.

Let’s say for example that we want to determine whether or not you’ve passed a course. Assume a passing grade is 70 or above. We’ll store the value “Pass” or “Fail” into a String called courseResult.

Using traditional if-else syntax, the code looks something like this:
""").padding()
                    
                    CodeSnippet(text: "int courseGrade = 80;\n\nif (courseGrade >= 70)\n{\n\tString courseResult = “Pass”;\n}\nelse\n{\n\tString courseResult = “Fail”\n}").padding()
                    
                    Text("Using the conditional operator, it looks a little something like this:").padding()
                    
                    CodeSnippet(text: "String courseResult = (courseGrade >= 70) ? “Pass” : “Fail”;").padding()
                    
                    Text("This shorthand form of if-else statements is only really appropriate if you’re storing values into a variable or methods with return values. ").padding()
                    
                    
                }
                
            }
            
        }

    }
}

struct If_Previews: PreviewProvider {
    static var previews: some View {
        If()
    }
}
