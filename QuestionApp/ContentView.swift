//
//  ContentView.swift
//  QuestionApp
//
//  Created by scholar on 8/11/23.
//

import SwiftUI

struct ContentView: View {
    @State private var textChange = ""
    
 
    var body: some View {
       
        ZStack{
            Image("backGround")
        }
        
       
     NavigationStack{
            VStack{
                Text("Welcome! What is my favorite color?")
                Spacer()
               
                Text(textChange)
                    .font(.title)
                Button("Pink"){
                    textChange = "You are right! Pink is my favorite color"
    
                }
                
                Button("Purple"){
                    textChange = "Wrong, try again next time!"
                    Image("wrongEmoji")
                        .hidden(true, remove: true)
                }
                Button("Green"){
                    textChange = "Wrong, try again next time!"
                }
            
            }
            Spacer()
         
    
            
            .toolbar{
                ToolbarItemGroup(placement: .status) {
                    
                    NavigationLink(destination: SeasonPage()){
                        Text("Next Page!")
                        
                    }
                    
                }
            }
        }
       
     
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
