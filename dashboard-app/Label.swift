//
//  Label.swift
//  dashboard-app
//
//  Created by synup on 02/07/19.
//  Copyright © 2019 synup. All rights reserved.
//

import SwiftUI

struct Label : View {
    
    var textLabel : String = "Text Label"
    var fontSize : CGFloat = 20
    
    var body: some View {
        Text(textLabel)
        .fontWeight(.bold)
        .font(.system(size : fontSize))
        .color(paleBlack)
    }
}

#if DEBUG
struct Label_Previews : PreviewProvider {
    static var previews: some View {
        Label(textLabel: "Transaction List",fontSize: 20)
    }
}
#endif
