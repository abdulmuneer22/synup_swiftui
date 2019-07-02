//
//  IncomeCard.swift
//  dashboard-app
//
//  Created by synup on 02/07/19.
//  Copyright © 2019 synup. All rights reserved.
//

import SwiftUI

struct IncomeCard : View {
    
    var backgroudColor : Color
    var cardTitle: String
    var cardValue : String
    
    var body: some View {
        
        VStack (alignment: .center, spacing: 50) {
            // Title Text
            Text(cardTitle)
                .fontWeight(.medium)
                .font(.system(size : 30))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .offset(x : 20)
            
            
            // Value Text
            
            Text(cardValue)
                .fontWeight(.bold)
                .font(.system(size : 40))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .offset(x : 20)
            }
            
            // Frame Configuration
            .frame(width: 250, height: 200, alignment: .leading)
            .background(backgroudColor)
            .cornerRadius(16, antialiased: true)
            .foregroundColor(textColor)
        
        
        
    }
}

#if DEBUG
struct IncomeCard_Previews : PreviewProvider {
    static var previews: some View {
        IncomeCard(
            backgroudColor: realBlue, cardTitle: "Title", cardValue: "Value")
    }
}
#endif
