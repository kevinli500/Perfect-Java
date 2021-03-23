//
//  ArithmeticExpressionsAndConcatenation.swift
//  Perfect Java
//
//  Created by Michael Ross on 3/8/21.
//

import SwiftUI

struct ArithmeticExpressionsAndConcatenation: View {
    var body: some View {
        VStack (alignment: .leading) {
            
            ScrollView {
                
                Text("Arithmetic Expressions and Type Casting")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Group {
                    
                    Text("Java lets you use arithmetic expressions—the ones we know and love, like addition, subtraction, multiplication, and division. We use + to signify addition, - to signify subtraction, * to signify multiplication, and / to signify division.").padding()
                    
                    CodeSnippet(text: "//Declare an int named i with a value of 10 + 5 (which is 15)//\n\nint i = 10 + 5;\n\n//Print out the product of 15 * 15 (which is 225)//\n\nSystem.out.println(15 * 15);").padding()
                    
                    Text("Java follows your traditional order of operations (PEMDAS, for those of you who remember the mnemonic):").padding()
                    
                    CodeSnippet(text: "//The output should be 8//\n\nSystem.out.println(3 + 5 * 3 – 10);").padding()
                    
                    Text("Division is when things get a little bit strange. What do you will be outputted when I print this arithmetic statement?").padding()
                    
                    CodeSnippet(text: "System.out.println(5 / 2);");
                    
                    Text("""
To those of you who are exceptionally skilled in division, 2.5 seems like the obvious (and only) answer. However, what if I told you the output was not 2.5, but rather… 2?

No, I did not make a computational error. And yes, Java understands how division works. The reason lies within the numbers themselves. This is a peculiar thing in Java, known as integer division. When dividing two integers, we throw away the remainder, or fraction or decimal or however you want to think about it, leaving the answer a whole number.
""").padding()
                    
                    CodeSnippet(text: "5/2 = 2.5 = 2").padding()
                    
                    Text("""
We all know that 5 / 2 = 2.5. But since the two numbers are integers, we drop the .5, leaving us with an answer of 2. Note how we don’t round. We simply truncate, or drop the values proceeding the decimal

Here’s some more examples:
""").padding()
                    
                    CodeSnippet(text: "System.out.println(15 / 4);\n/*Will output 3 (3.75 -> 3)*/\n\nSystem.out.println(-5 / 2);\n/*Will output -2 (-2.5 -> -2)*/\n\nSystem.out.println(1 / 5);\n/*Will output 0 (0.2 -> 0)*/").padding()
                    
                }
                
                Group {
                    
                    Text("""
Integer division can be very useful, and you’ll be able to see it in action when we get deeper with Java. For now, though, it’s nice to know that it exists.

At this point, you’re probably wondering: “so is it possible to do real division? Because 5 divided by 2 is actually 2.5, regardless of what Java thinks.”

Yes! You absolutely can. Java will do real division when it sees a double as one of the operands. You just need to turn one of the numbers into a double, or in other words, a decimal number. So, for the number 5, simply change it to 5.0. Java will treat this as a double.
""").padding()
                    
                    CodeSnippet(text: "/*Will output 2.5*/\nSystem.out.println(5.0 / 2);\n\n/*Will also output 2.5/*\nSystem.out.println(5 / 2.0);\n\n/*Will also output 2.5/*\n\nSystem.out.println(5.0 / 2.0);").padding()
                    
                    Text("As long as one double value is present, you will get a double output.").padding()
                    
                    CodeSnippet(text: "System.out.println(1 + 5 / 2 – 1.5); \n/*Output is 1.5/*\n\n/* Order:\n* 5 / 2 = 2 (int divided by int results in an int quotient)\n* 1 + 2 = 3 (Add 1 to the quotient of 5 / 2 which yields 3)\n* 3 – 1.5 = 1.5 (Subtract the sum by 1.5 to get 1.5)\n*/").padding()
                    
                    Text("Another way to force an int to be a double is to type-cast it as a double.").padding()
                    
                    CodeSnippet(text: "System.out.println((double) 5 / 2);").padding()
                    
                    Text("""
The (double) represents casting—we are forcing the int value 5 to become a double—5.0. Thus, the output will be 2.5.

Before we go too deep into that, let’s throw in some data types into the picture.
""").padding()
                    
                    CodeSnippet(text: "int num = 10;\nint doubleNum = num;\n\n/*What are the outputs?/*\nSystem.out.println(num);\nSystem.out.println(doubleNum);").padding()
                    
                    Text("""
In this example, we have an int named num with a value of 10. Okay, seems normal so far.

Then, we have a double named doubleNum with a value of num. Well, we know num is 10, so doubleNum should be 10 as well. Right?

Close! Remember that a double variable has to be a decimal number. Since 10 is a whole number, and we are expecting a decimal number, Java automatically turns 10 into 10.0. Thus, the print statements will yield:
""").padding()
                    
                    CodeSnippet(text: "10\n10.0").padding()
                    
                }
                
                Group {
                    
                    Text("""
This is known as upcasting. We pass a smaller type (int) to a bigger type (double), and Java is kind enough to automatically convert it for us. Thanks, Java!

This might seem trivial since it’s the same number, but just think about the statement:
""").padding()
                    
                    CodeSnippet(text: "System.out.println(num / 3); //10 / 3\nSystem.out.println(doubleNum / 3); //10.0 / 3").padding()
                    
                    Text("""
The first one is integer division, since num is an int. Do the math and you get 3, dropping the .33. Thus, the output is 3

The second one is normal division, since doubleNum is a double. This will yield an output of 3.33

Here’s another example to really drive the point across.
""").padding()
                    
                    CodeSnippet(text: "double num = 5;\n\n/*5 is upcasted to 5.0; the output is 5.0/*\nSystem.out.println(num);").padding()
                    
                    Text("This is not valid:").padding()
                    
                    CodeSnippet(text: "double num = 3.2;\nint num2 = num;").padding()
                    
                    Text("""
Hold it right there! This is invalid casting. Since double is a bigger type than int, trying to force a decimal number into an int data type (which only accepts whole numbers) will give you an error: incompatible types.

Here is a more acceptable way to do something like the example above, this time without Java getting upset:
""").padding()
                    
                    CodeSnippet(text: "double num = 3.2;\nint num2 = (int) num;").padding()
                    
                    Text("Here we are manually casting the double 3.2 into an int, making it 3. This is acceptable, since we turn 3.2 into a value that is acceptable for an int to handle. This is known as downcasting and must be manually done—don’t make the mistake of thinking Java will automatically convert it for you like it would for upcasting. This is something you have to do yourself. Don’t worry, though, you’ll get an error letting you know if you forget.").padding()
                    
                }
                
                
            }
            
        }
    }
}

struct ArithmeticExpressionsAndConcatenation_Previews: PreviewProvider {
    static var previews: some View {
        ArithmeticExpressionsAndConcatenation()
    }
}
