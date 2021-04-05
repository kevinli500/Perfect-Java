//
//  While.swift
//  Perfect Java
//
//  Created by Michael Ross on 2/8/21.
//

import SwiftUI

struct While: View {
    var body: some View {

        VStack(alignment: .leading) {
            
            ScrollView {
                
                Text("While Loops")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .padding()
                
                
                Group {
                    
                    Text("""
Let’s say I ask you to print “Hello world” 100 times. I don’t know why you would ever do that, but just humor me for the sake of this example.

Printing out the same thing 100 times isn’t difficult, but… it’s kind of repetitive, no?
""").padding()
                    
                    CodeSnippet(text: "System.out.println(“Hello world”);\nSystem.out.println(“Hello world”);\nSystem.out.println(“Hello world”);\n//97 more print statements to go!").padding()
                    
                    Text("""
Yeah, that doesn’t look particularly fun to do. There’s got to be a more efficient way to do it, right?

The answer is yes, of course. There’s a much, much easier way to do this, and you only need to use a print statement once!

We can simplify this process by using loops. In this section, we’ll cover the while loop:
""").padding()
                    
                    CodeSnippet(text: "while (boolean expression)\n{\n\tdo something if expression is true\n}").padding()
                    
                    Text("""
Hmm… this is very similar to the structure of an if statement. There’s a boolean expression, and if it’s true, we run whatever is inside. There’s just one difference, but it is an incredibly significant difference. Are you ready? Here it is:

As long as the boolean expression is true, we will continually run whatever is inside the while loop, hence the name while loop.

Here’s how a while loop works:
    1.    Check if the boolean expression is true. If it is false, exit loop, move on. If true, go to 2
    2.    Run whatever is inside of the while loop
    3.    Go back to 1

Let me illustrate an example:
""").padding()
                    
                    CodeSnippet(text: "/* i, j, and k are very popular variable names for loops */\nint i = 1;\nwhile (i == 1)\n{\n\tSystem.out.println(“Hello world”);\n}").padding()
                    
                    Text("""
Let’s apply the 3 steps above to see what will happen.

\t1.\tCheck if the boolean expression is true. If it is false, exit loop, move on. If true, go to 2.

\t\tThe boolean expression is checking if variable i is equivalent to 1 (remember, to check for equivalency we use ==, not =). We know i is equivalent to 1 because we initialized it to 1 in the previous line. Thus, the boolean expression is true. Move to 2.

\t2.\tRun whatever is inside of the while loop.

\t\tThere’s only one line inside the while loop: a print statement that prints “Hello world”

\t3.\tGo back to 1

If you’re observant, you’ll notice that there’s something terribly wrong with this while loop.
""").padding()
                    
                    CodeSnippet(text: "int i = 1;\nwhile (i == 1)\n{\n\tSystem.out.println(“Hello world”);\n}").padding()
                    
                    Text("""
In the example above, the variable i will always be equal to 1. We don’t ever modify the value of i, so every time we loop and check the boolean expression (i == 1), it’s always going to be true. That means that the loop will run infinitely, and most of the time, that isn’t what you want.

How do we modify this loop so that it doesn’t run infinitely? Well, let’s look at the boolean expression: i == 1. We just have to modify the while loop so that at some point, i == 1 is false.
""").padding()
                    
                    CodeSnippet(text: "int i = 1;\nwhile (i == 1)\n{\n\tSystem.out.println(“Hello world”);\n\ti = i + 1;\n}").padding()
                    
                }
                
                Group {
                    
                    Text("""
We added a new line inside the while loop: i = i + 1;

Now, after we print out “Hello world”, we increment the value of i by 1, making the value 2. When we run the while loop again to test the condition, we know that i == 1 is false, as i is now 2; therefore, we exit the while loop.

Logically, this makes sense. Pragmatically though, it’s not really useful. So, let’s go back to our previous example about printing out “Hello world” 100 times.

The common way to do this is to start i at 0, increment it by 1 and stop before it reaches 100. In Java (and a lot of other programming languages), we tend to start counting at 0 instead of 1. A little strange, for sure, but once we start learning arrays, you’ll understand the reasoning behind it.

We want to print “Hello world” 100 times, which means that we want the loop to run 100 times. By incrementing i by one 100 times, we cause the loop to repeat 100 times. We want to stop after we loop 100 times. After 100 loops, the value of i will be 100. Thus, the condition i < 100 ensures we do not go beyond the desired loops.
""").padding()
                    
                    CodeSnippet(text: "int i = 0;\nwhile (i < 100)\n{\n\tSystem.out.println(“Hello world”);\n\ti = i + 1; \n\t/* Can also be expressed as i++; */\n}").padding()
                    
                    Text("Let’s break this down line by line:").padding()
                    
                    CodeSnippet(text: "int i = 0; ").padding()
                    
                    Text("We’re initializing an int named i with value 0. We’re going to be using this as the “counter” for the while loop: we slowly increment this value, stopping before it reaches 100.").padding()
                    
                    CodeSnippet(text: "while (i < 100)").padding()
                    
                    Text("Remember that for a while loop to run, the condition must be true. i is equal to 0 right now, so of course i is less than 100.").padding()
                    
                    CodeSnippet(text: "System.out.println(“Hello world”);").padding()
                    
                    Text("We print our desired output.").padding()
                    
                    CodeSnippet(text: "i = i + 1; ").padding()
                    
                }
                
                Group {
                    
                    Text("""
This beautiful line of code ensures that our while loop does not run infinitely. Incrementing i by 1 guarantee that at some point (in this case, 100 loops later), the condition eventually will yield false and we break out of the while loop.

While loops are a little confusing at first. Don’t worry if you feel a little confused or overwhelmed. Try some practice problems and mess around with it on your compiler.

Before we wrap this up, instead of printing out “Hello world” 100 times, let’s print out 1 2 3 4 5… all the way up to 100. How can we do that? Think about it yourself, then look at the solution.


Solution:

Here’s two ways we can do this:

Method 1:
""").padding()
                    
                    CodeSnippet(text: "int i = 0;\nwhile (i < 100)\n{\n\tSystem.out.println(i + 1);\n\t/* I’ll be using i++ instead of i = i + 1, they mean the same /*\n\ti++;\n}").padding()
                    
                    Text("*i++ is a special shortcut for i = i + 1, but its structure is very unique, you can’t use i+2 for i = i + 2;\n\nMethod 2:").padding()
                    
                    CodeSnippet(text: "int i = 1;\nwhile (i <= 100) //or i < 101\n{\n\tSystem.out.println(i);\n\ti++;\n}").padding()
                    
                    Text("And as an afterthought, what would be the output of these two?").padding()
                    
                    CodeSnippet(text: "int i = 100;\nwhile (i > 0)\n{\n\tSystem.out.println(i);\n\ti--;\n}").padding()
                    
                    CodeSnippet(text: "int i = 1;\nwhile (i <= 1024)\n{\n\tSystem.out.println(i);\n\ti = i * 2;\n}").padding()
                    
                }
                
            }
            
        }

    }
}

struct While_Previews: PreviewProvider {
    static var previews: some View {
        While()
    }
}
