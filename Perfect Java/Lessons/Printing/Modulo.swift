//
//  Modulo.swift
//  Perfect Java
//
//  Created by Michael Ross on 3/20/21.
//

import SwiftUI

struct Modulo: View {
    var body: some View {
        VStack (alignment: .leading) {
            
            ScrollView {
                
                Text("The Modulo Operator")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .padding()
                
                
                Group {
                    
                    Text("""
Let’s look at a new operator that some people may not have heard of: the modulo (or mod) operator. It’s represented by the % symbol.

Modulo represents the remainder when two whole numbers are divided.

For instance, let’s look at this example:
""").padding()
              
                    CodeSnippet(text: "int a = 5;\nint b = 2;\nSystem.out.println(a % b);").padding()
                    
                    Text("What’s the remainder when 5 is divided by 2? If you’re a mathematics prodigy, you would answer that it’s 1. Thus, the output of the print statement is 1.").padding()
                    
                    CodeSnippet(text: "/*What’s the remainder when 15 is divided by 10? It’s 5*/\nSystem.out.println(15 % 10); //Output: 5\n\n/*What about the remainder when 100 is divided by 9? It’s 1*/\nSystem.out.println(100 / 9); //Output: 1\n\n/*And how about the remainder when 8 is divided by 2? It’s 0*/\nSystem.out.println(8 % 3); //Output: 0").padding()
                    
                    
                    HStack (alignment: .firstTextBaseline){
                        Text("\u{2022}")
                            .font(.title)
                            .padding(.leading)
                        VStack(alignment: .leading) {
                        
                            Text("The sign of the first operand decides the sign of the result.")
                                .padding(.trailing)
                            
                            CodeSnippet(text: "/* The sign of the first operand is negative, output is -2 */\nSystem.out.println(-5 % 3);\n\n/* The sign of the first operand is positive, output is 2 */\nSystem.out.println(5 % -3);").padding(.trailing).padding(.vertical)
                        }
                        
                    }
                    
                    HStack (alignment: .firstTextBaseline){
                        Text("\u{2022}")
                            .font(.title)
                            .padding(.leading)
                        VStack(alignment: .leading) {
                        
                            Text("If the first operand is smaller than the second operand, the result is the value of the first operand.")
                                .padding(.trailing)
                            
                            CodeSnippet(text: "/* 1 < 3. The result is 1 */\nSystem.out.println(1 % 3);\n\n/* 23 < 81. The result is 23 */\nSystem.out.println(23 % 81);\n\n/* Tricky! Testing both fun facts! The result is -3 */\nSystem.out.println(-3 % 8);").padding(.trailing).padding(.vertical)
                        }
                        
                    }
                    
                    Text("Be careful not to mix up division and modulo—they’re similar!").padding()
                        
                    
                }
                
                
                
            }
            
            
        }
    }
}

struct Modulo_Previews: PreviewProvider {
    static var previews: some View {
        Modulo()
    }
}
