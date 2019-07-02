//
//  TransactionList.swift
//  dashboard-app
//
//  Created by synup on 02/07/19.
//  Copyright © 2019 synup. All rights reserved.
//

import SwiftUI


struct ListTabItem : View{
    var label:String = "Label"
    
    var body: some View {
        Text(label)
            .color(.white)
            .padding(.leading , 25)
            .padding(.trailing , 25)
            .padding(.top , 5)
            .padding(.bottom , 5)
            .background(
                Rectangle()
                    .foregroundColor(brandGreen)
            ).cornerRadius(16)
    }
}

struct TransactionListTabItems : View {
    var body: some View {
        
        HStack {
            ListTabItem(label: "All")
            ListTabItem(label: "Income")
            ListTabItem(label: "Spent")
            }.frame(width: 400, height: 50, alignment: .leading)
    }
}



struct TxnListRowItem : View {
    
    var body : some View {
        HStack(alignment: .center, spacing: 0) {
            Image("up")
            .padding(.leading , 20)
            VStack(alignment: .leading,spacing: 15){
                Text("Salary")
                Text("12 June 2019")
            }
                .frame(alignment: .leading)
                .padding(.top , 10)
                .padding(.leading, 20)
            Spacer()
            Text("+$3,000")
            .padding(.trailing, 10)
            }
//            .background(Color.red)
        
    }
}



struct TransactionList : View {
    var body: some View {
        VStack {
            Label(textLabel: "Transaction List",fontSize: 22)
                .frame(width: 400, alignment: .leading)
            TransactionListTabItems()
            TxnListRowItem()
            TxnListRowItem()
            TxnListRowItem()
            TxnListRowItem()
            TxnListRowItem()
            TxnListRowItem()
            TxnListRowItem()
            TxnListRowItem()
        }
        
        
    }
}

#if DEBUG
struct TransactionList_Previews : PreviewProvider {
    static var previews: some View {
        VStack {
            TransactionList()
            Spacer()
        }
        
        
    }
}
#endif


//extension Image {
//    func setImageColor(color: Color) {
//        let templateImage = self.image?.withRenderingMode(.alwaysTemplate)
//        self.image = templateImage
//        self.accentColor = color
//    }
//}
