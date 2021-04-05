//
//  DoWhile.swift
//  Perfect Java
//
//  Created by Michael Ross on 2/8/21.
//

import SwiftUI

struct DoWhile: View {
    var body: some View {

        VStack(alignment: .leading) {
            
            ScrollView {
                
                Text("Do-While Loops")
                    .font(.title)
                    .padding()
                    .multilineTextAlignment(.center)
                
                
                Group {
                    
                    Text("Remember the while loop? You know, the one that looks like this:").padding()
                    
                    CodeSnippet(text: "while (condition)\n{\n\tdo something\n}").padding()
                    
                    Text("""
We’re going to introduce a twist on the while loop, called the do-while loop. If you’ve forgotten what a while loop is or if you’re a little murky on how they work, re-read the While Loops module and come back—or you’ll find yourself a little bit lost!

Here’s what the do-while loop looks like:
""").padding()
                    
                    CodeSnippet(text: "do {\n\tdo something\n}\nwhile (condition); /* Yes, the semicolon is deliberate */").padding()
                    
                    Text("""
Notice that, unlike your traditional while loop, the while (condition) section is at the bottom of the loop structure, not at the top.

That’s actually what makes the do-while loop so unique. The loop actually executes the code block first and then checks the condition, as opposed to the traditional while loop that first checks the condition and then runs the code block.

Well, what does that mean? That means that the loop will always run at least once, even if the condition is false, because we execute the code block before checking the condition.
""").padding()
                    
                    CodeSnippet(text: "int i = 1;\ndo {\n\tSystem.out.println(i);\n}\nwhile (i > 100);").padding()
                    
                    Text("""
Take a look at the code above. We’ve declared and initialized an int named i with a value of 1. Now, since this is a do-while loop, we run the do statement first without looking at the condition. It says to print i, so we print out the current value of i, which is 1.

Now we can check the condition. i > 100… hmm… now I’m not math genius, but I’m pretty sure 1 is not greater than 100. So, we exit the loop.

Compare this to your traditional while loop:
""").padding()
                    
                    CodeSnippet(text: "int i = 1;\nwhile (i > 100)\n{\n\tSystem.out.println(i);\n}").padding()
                    
                    Text("""
Nothing will print out here; the OG while loop first checks the condition, and since i > 100 is false (1 is not greater than 100), we skip the while loop and thus, nothing is outputted.

Remember that a do-while loop can also run infinitely if you’re not careful—so always be vigilant!


Pop Quiz

What’s the output of the code below?
""").padding()
                    
                    CodeSnippet(text: "int i = 0;\ndo {\n\tSystem.out.print(i + “ ”);\n\ti = i + 1;\n}\nwhile (i < 5);").padding()
                    
                }
                
                Text("""
Answer: 0 1 2 3 4
                    
Do-while loops are sort of a niche case and should be used when you absolutely need a code block to run at least once. I don’t use them nearly as often as I use the traditional while loop, but that doesn’t mean it’s useless. Keep it in mind!
""").padding()
                
            }
            
            
        }


    }
}

struct DoWhile_Previews: PreviewProvider {
    static var previews: some View {
        DoWhile()
    }
}
