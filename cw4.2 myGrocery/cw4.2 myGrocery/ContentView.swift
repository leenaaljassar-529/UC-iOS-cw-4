//
//  ContentView.swift
//  cw4.2 myGrocery
//
//  Created by Leena Al Jassar on 29/06/2022.
//

import SwiftUI

struct ContentView: View {
 @State   var items = ["bananas", "cherry", "kiwi", "watermelon", "strawberry", "pear"]
   // @State   var items = ["bananas", "cherry", "kiwi", "watermelon"]
   @State var newItem = ""
    var body: some View {
        VStack{
       
        List (items, id:\.self){ item in
            HStack{
                Image(item)
                    .resizable()
                    .frame(width: 60, height: 60)
                Text(item)
            }
            .onTapGesture {
                items.remove(at: 0)
            }
        }
        HStack{
          
            Button {
                items.append(newItem)
            } label:{
                Image(systemName: "plus")
                    .foregroundColor(Color.white)
                    .frame(width: 50, height: 50)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.642, green: 0.885, blue: 0.383, opacity: 0.805)/*@END_MENU_TOKEN@*/)
                    .cornerRadius(20)
            
            }
            
            TextField("New Item", text: $newItem)
            
//            Button {
//                items.remove(at:(0))
//            } label:{
//                Image(systemName: "minus")
//                    .foregroundColor(Color.white)
//                    .frame(width: 50, height: 50)
//                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.975, green: 0.281, blue: 0.283, opacity: 0.693)/*@END_MENU_TOKEN@*/)
//                    .cornerRadius(20)
//
//            }
            
            Button {
                items.remove(at:(0))
            } label:{
                Image(systemName: "minus")
                    .foregroundColor(Color.white)
                    .frame(width: 50, height: 50)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.975, green: 0.281, blue: 0.283, opacity: 0.693)/*@END_MENU_TOKEN@*/)
                    .cornerRadius(20)
                
            }
        }
        .padding()
            
        }
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
