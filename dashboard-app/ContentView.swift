//
//  ContentView.swift
//  dashboard-app
//
//  Created by synup on 02/07/19.
//  Copyright © 2019 synup. All rights reserved.
//

import SwiftUI

struct SomeCard : View{
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Hello SWIFT UI")
                Text("Hello SWIFT UI")
                Text("Hello SWIFT UI")
            }
            Spacer()
            }.background(Color.purple)
            .padding(.horizontal , 20)
            .relativeWidth(1.0)
        
    }
}


struct HorizontalScroller : View{
    var body: some View {
        ScrollView {
            HStack {
                IncomeCard(backgroudColor: coffeeBrown, cardTitle: "Income", cardValue: "$5000.00")
                IncomeCard(backgroudColor: coffeeBrown, cardTitle: "Income", cardValue: "$5000.00")
            }
            }.frame( height: 220)
    }
}


struct TransactionListContainer : View {
    var body : some View {
        TransactionList()
    }
}


struct ContentView : View {
    var body: some View {
        GeometryReader { geometry in
            
            VStack {
                ScrollView{
                    MyBalance(cardLabelText: "My Balance")
                    .frame(width: geometry.size.width - 20)
                        .padding(.horizontal , 10)
                    HorizontalScroller()
                    .frame(width: geometry.size.width - 20)
                    .padding(.horizontal , 10)
                    TransactionListContainer()
                    .frame(width: geometry.size.width - 20)
                    .padding(.horizontal , 10)
                }
                
            }
            
        }
        
    }
    
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
