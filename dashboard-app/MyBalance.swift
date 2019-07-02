//
//  MyBalance.swift
//  dashboard-app
//
//  Created by synup on 02/07/19.
//  Copyright © 2019 synup. All rights reserved.
//

import SwiftUI

struct MyBalance : View {
    
    
    
    var mainBackgroudColor : Color = Color(red: 32/255, green: 175/255, blue: 155/255)
    var textColor : Color = .white
    
    var body: some View {
        
        VStack (alignment: .center, spacing: 50) {
            // Title Text
            Text("My Balance")
                .fontWeight(.medium)
                .font(.system(size : 30))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                .padding(.top,20).padding(.bottom,20)
            
            // Value Text
            
            
            Text("$3,000.00")
                .fontWeight(.thin)
                .font(.system(size : 40))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                .padding(.top,20).padding(.bottom,20)
            }
            
            
            
            // Frame Configuration
            .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
            .background(mainBackgroudColor)
            .cornerRadius(16, antialiased: true)
            .foregroundColor(textColor)
            
    }
}

#if DEBUG
struct MyBalance_Previews : PreviewProvider {
    static var previews: some View {
        MyBalance()
    }
}
#endif
