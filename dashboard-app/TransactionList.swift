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
            Spacer()
            }.padding(.horizontal , 10)
            .padding(.vertical , 5)
    }
}



struct TxnListRowItem : View {
    
    var body : some View {
        HStack(alignment: .center, spacing: 0) {
            Image("up")
                .padding(.leading , 20)
            Spacer()
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
        
        
    }
}



struct TransactionListLabel : View {
    var body: some View {
        HStack {
            Label(textLabel: "Transaction List", fontSize: 20)
            Spacer()
            }.padding(.horizontal , 15)
            .padding(.vertical , 10)
    }
}


struct TransactionList : View {
    var body: some View {
        VStack {
            TransactionListLabel()
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
        }
        
        
    }
}
#endif


