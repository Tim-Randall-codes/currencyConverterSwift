//
//  ContentView.swift
//  CurrencyConvert
//
//  Created by Tim Randall on 20/5/21.
//

import SwiftUI

struct ContentView: View {
    @State var aud: String = "0"
    @State var usd: Double = 0
    @State var rmb: Double = 0
    @State var euro: Double = 0
    @State var jpy: Double = 0
    var body: some View {
        VStack{
            Text("Currency Converter!")
                .padding()
            Text("Accurate on 21/5/2021")
                .padding()
            TextField("Australian dollars", text: $aud)
                .keyboardType(.numberPad)
                .padding()
                .border(Color.black, width: 2)
            Button("Convert", action:{
                let iaud = Int(aud) ?? 0
                usd = Double(iaud) * 0.78
                rmb = Double(iaud) * 5
                euro = Double(iaud) * 0.68
                jpy = Double(iaud) * 84.46
            }).padding().border(Color.pink, width: 3)
            
            Spacer()
            HStack{
                Text("USD")
                    .padding()
                Text(String(usd))
                    .padding()
            }
            HStack{
                Text("RMB")
                    .padding()
                Text(String(rmb))
                    .padding()
            }
            HStack{
                Text("Euro")
                    .padding()
                Text(String(euro))
                    .padding()
            }
            HStack{
                Text("JPY")
                    .padding()
                Text(String(jpy))
                    .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
