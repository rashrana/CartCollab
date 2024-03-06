//
//  CartItemController.swift
//  CartCollab
//
//  Created by Prashant Rana on 3/5/24.
//

import SwiftUI

struct CartItemController: View {
    @ObservedObject var cartItem : CartItem
    
    var body: some View {
        Card(cornerRadius: 16,
             height:150,
             color: Color(.white),
             elevation: 3,
             focusColor: Color(.systemRed).opacity(0.05),
             
             views: {
                AnyView (
                    HStack {
                        Image(systemName: cartItem.imageId)
                            .resizable()
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100, alignment: .center)
                            .padding(20)
                        
                        Spacer()
                        VStack {
                            Text(cartItem.name)
                                .font(.system(size:18,  weight: .bold))
                                .padding(4)
                            Text(cartItem.type)
                                .font(.system(size:16))
                        }
                        Spacer()
                    }
                )
            },
             click: clickCartItem,
             longClick: longClickCartItem
        )
        }
        private func clickCartItem() {
            
        }
        
        private func longClickCartItem() {
            
        }
    
}

#Preview {
    CartItemController(
        cartItem: CartItem(id: "1", data: ["name": "Cart Item 1", "type": "Food", "imageId": "fork.knife.circle"])!
    )
}
