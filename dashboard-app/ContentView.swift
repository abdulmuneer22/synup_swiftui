//
//  ContentView.swift
//  dashboard-app
//
//  Created by synup on 02/07/19.
//  Copyright © 2019 synup. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        
        ScrollView{
        
            VStack {
                MyBalance()
                    .padding(.trailing, 0)
                    .padding(.leading, 10)
                
                
                /******  Income Cards ******/
                ScrollView {
                    HStack {
                        IncomeCard(backgroudColor: coffeeBrown, cardTitle: "Spent", cardValue: "3,000")
                        
                        IncomeCard(backgroudColor: coffeeBrown, cardTitle: "Spent", cardValue: "3,000")
                    }
                    }.padding(.leading , 10)
                    .frame(width: 400, height: 200, alignment: .center)
                /****** END OF  Income Cards ******/
                
                
                /** TXN LIST CARD** */
                TransactionList()
                    .padding(.leading , 20)
                    .padding(.top, 30)
                    .frame(width: 400)
                
                /** END OF TXN LIST CARD** */
                
                
                }.frame(width: 400)
                // end vertical stack under scrollview
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
