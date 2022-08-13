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
                Text("حاسبة الدرجات")
            
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .lineLimit(0)
                Spacer()
                Image("pic1")
                    .resizable()
                    .frame(width: 200, height: 200)
                Spacer()
                // .padding()
                TextField("enter your grade", text: $finalgrade)
                    .background(.white)
                    .textFieldStyle(
                    
                .roundedBorder)
                Spacer()
            
                Text("احسب درجتي")
                    .frame(width: 200, height: 40)
                    .background(Color.yellow)
                
                    .onTapGesture{
                    
                        if (Double(finalgrade) ?? 0)
                            >= 90{
            gradedes = "امتياز"
                        }
                        if else (Double(finalgrade)?? 0)>=80 {
                            gradedes = "جيد جدا "
                        }
                        if else (Double(finalgrade)?? 0) >=70 {
                         gradedes = "جيد"
                        }
                        if else (Double(finalgrade)?? 0) >=60 {
                         gradedes = "مقبول"
                        }
        
                        else {
                gradedes = "رسوب"
                            }
                    Spacer()
                Text("لقد حصلت على درجه")
                Spacer()
                    
                Text(gradedes)
            }.padding()
                
        
    }
    
}
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
        
        
    
