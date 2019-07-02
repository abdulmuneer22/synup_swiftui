//
//  MyBalance.swift
//  dashboard-app
//
//  Created by synup on 02/07/19.
//  Copyright © 2019 synup. All rights reserved.
//

import SwiftUI


struct CardLabel : View {
    var cardLabelText : String = "Card Label"
    var body: some View {
        HStack {
            Spacer()
            Text(self.cardLabelText)
                .fontWeight(.medium)
                .font(.system(size : 30))
            Spacer()
        }
    }
}


struct CardValue : View {
    var cardValueText : String = "$"
    var body: some View {
        HStack {
            Spacer()
            Text(self.cardValueText)
                .fontWeight(.bold)
                .font(.system(size : 40))
            Spacer()
        }
    }
}


struct MyBalance : View {
    
    var mainBackgroudColor : Color = Color(red: 32/255, green: 175/255, blue: 155/255)
    var textColor : Color = .white
    var cardLabelText : String
    
    
    
    var body: some View {
        
        VStack {
            CardLabel(cardLabelText: "My Balance")
                .padding(.vertical , 20)
            
            CardValue(cardValueText: "$3000.00")
                .padding(.vertical , 20)
        }
            .background(brandGreen)
            .foregroundColor(.white)
            .cornerRadius(16)
        
        
        
    }
}

#if DEBUG
struct MyBalance_Previews : PreviewProvider {
    static var previews: some View {
        MyBalance(cardLabelText: "My Balance")
    }
}
#endif
