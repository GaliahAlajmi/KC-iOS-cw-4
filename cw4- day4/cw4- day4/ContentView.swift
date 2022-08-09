//
//  ContentView.swift
//  cw4- day4
//
//  Created by GALIAH ALAJMI on 11/01/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @State var finalgrade = ""
    @State var gradedes = ""
    var body: some View {
        ZStack{
            Color.purple
                .ignoresSafeArea()
            
            VStack{
                Text("حاسبه الدرجات")
            
            .font(.largetitle)
             .color(.white)
                Spacer()
                Image("pic1")
                    .resizable()
                    .frame(width: 200, height: 200)
                TextField("enter your grade , text: $finalgrade", text: <#Binding<String>#>)
                    .background(.white)
                    .textFieldStyle(
                .roundedBorder)
                Text("احسب درجتي")
                    .frame(width: 200, height: 40)
                    .background(.yellow)
                    .onTapGesture {
                        if (Double(finalgrade)??0)
                            >=90{
            gradedes= "امتياز"
                            
                            else{
                gradedes = "رسوب"
                            }
                    }
                Text("لقد حصلت على درجه")
                Spacer()
                Text(gradedes)
            }.padding()
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
        
        
    }
