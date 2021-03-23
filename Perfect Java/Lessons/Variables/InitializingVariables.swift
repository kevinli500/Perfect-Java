//
//  InitializingVariables.swift
//  Perfect Java
//
//  Created by Michael Ross on 2/8/21.
//

import SwiftUI

struct InitializingVariables: View {
    var body: some View {
        
        VStack(alignment: .leading) {
            
            ScrollView {
                
                Group {
        
                    Text("Declaring and Initializing Variables")
                        .font(.title)
                        .multilineTextAlignment(.center)
                        .padding()
                        
                    Text("""
    To start programming, you are going to want to use variables. A variable is a name along with a particular data type that contains a value associated with that data type. Think of it like a container that stores some value. The cool thing about a variable is, well, that it varies. It can change. It’s flexible.
                    
    Java is a statically typed language. And if you don’t know what that means, do not fret. Basically, Java expects a variable to be declared before we can pass in values and mess around with them. So, when we create a variable, make sure it has a type and a name before we start to do anything with it. Let’s get started.
        
    We’re going to declare an int variable, and the process is pretty simple:
""").padding()
                    
                    CodeSnippet(text: "int num;").padding()
                    
                    Text("""
    In this example, we have declared an int called num. Now, you can name the variable pretty much whatever you want, with some exceptions, but I heavily recommend you name it something that is easy to understand. Clarity is very important when it comes to programming.
""").padding()
                
                    CodeSnippet(text: "//Let’s say you’re declaring a variable that represents your age. Which one of these is easiest to understand?//\nint myAge;\nint qwotiqwrog;\nint q;").padding()
                
                    Text("""
    Anyways, back to the original code:
""").padding()
                    
                    CodeSnippet(text: "int num;").padding()
                    
                    Text("""
    This won’t compile—not yet! For it to compile, we need to give the variable a value. The value should correspond with the variable type. For instance, a variable of type int should have an integer, like 3 or -10. If you try to give an int a decimal (or even worse, a letter, how dreadful) Java will get angry, and give you an error when you try to compile.

    So now let’s declare a variable—and give it an appropriate value. In this case, since the variable is of type int, any zero or nonzero whole number will do. This is known as initializing a variable.
""").padding()
                    
                    CodeSnippet(text: "int myAge;\nmyAge = 21;").padding()
                    
                }
                
                Group {
                
                    Text("""
    Once you declare a variable, you do not need to do it again. Notice how in the second line, we do not add the int keyword again (doing so will actually give you an error). That is because we have already declared it in the line prior! This is cool because having to retype int every time we try to make a change to the variable can get very redundant.

    We can declare and initialize a variable in one line:
""").padding()
                  
                    CodeSnippet(text: "int myAge = 21;").padding()
                    
                    Text("""
    We can change the value of a variable as many times as we want.
""").padding()
                    
                    CodeSnippet(text: "//myAge is 21//\nint myAge = 21;\n\n//Now myAge is 30//\nmyAge = 30;\n\n//Now myAge is 35//\nmyAge = 35;").padding()
                    
                    Text("""
    Here we add the value of two variables to a third:
""").padding()
                    
                    CodeSnippet(text: "int examOneScore = 90;\nint examTwoScore = 95;\n\n//combinedExamScores is the sum of examOneScore and examTwoScore//\nint combinedExamScores = examOneScore + examTwoScore;\n\n//This should output 185//\nSystem.out.println(combinedExamScores);").padding()
                    
                    Text("""
    Declaring and initializing variables of other types work in a similar fashion. Here are some examples:
""").padding()
                    
                    CodeSnippet(text: "//This variable has the name costOfApple with a double data type//\ndouble costOfApple = 0.75;\n\n//This variable has the name isWeekday with a boolean data type//\nboolean isWeekday = false;\n\n//This variable has the name letterGrade with a char data type//\nchar letterGrade = ‘A’;").padding()
                    
                }
                
            }
            
        }
    }
}

struct InitializingVariables_Previews: PreviewProvider {
    static var previews: some View {
        InitializingVariables()
    }
}
