//
//  ContentView.swift
//  cw4.2 myGrocery
//
//  Created by Leena Al Jassar on 29/06/2022.
//

import SwiftUI

struct ContentView: View {
 @State   var items = ["twix", "kinder", "mars", "aero" , "kitkat"]
   @State var newItem = ""
    var body: some View {
       
        List (items, id:\.self){ item in
            HStack{
                Image(item)
                    .resizable()
                    .frame(width: 100, height: 100)
                Text(item)
            }
            
        }
        HStack{
           // Button
            //textfiels
            //button
          
            
            Button {
                items.append(newItem)
            } label:{
                Image(systemName: "plus")
                    .cornerRadius(20)
                //baclground color and foregroudn color padding
            }
            
            TextField("New Item", text: $newItem)
            
            Button {
                items.remove(at:(0))
            } label:{
                Image(systemName: "minus")
                    .frame(width: 50, height: 50)
                    .cornerRadius(20)
                //baclground color and foregroudn color padding
            }
            
        }
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
