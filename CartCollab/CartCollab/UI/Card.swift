//
//  Card.swift
//  CartCollab
//
//  Created by Prashant Rana on 3/5/24.
//

import SwiftUI

struct Card: View {
    @State private var isTap: Bool = false
    let cornerRadius: CGFloat
    let width: CGFloat
    let height: CGFloat
    let color: Color
    let elevation: CGFloat
    let views: () -> AnyView
    let click: () -> Void
    let focusColor: Color?
    let longClick: () -> Void
    
    init(
        cornerRadius: CGFloat = 16,
        width: CGFloat = CGFloat.infinity,
        height: CGFloat = 140,
        color: Color = Color(.white),
        elevation: CGFloat = 5,
        focusColor: Color? = nil,
        views: @escaping () -> AnyView,
        click: @escaping () -> Void = {},
        longClick: @escaping () -> Void = {}
    ) {
        self.cornerRadius = cornerRadius
        self.width = width
        self.height = height
        self.color = color
        self.elevation = elevation
        self.views = views
        self.click = click
        self.focusColor = focusColor
        self.longClick = longClick
    }
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .fill(isTap ? focusColor ?? color : color)
                .frame(maxWidth: width, maxHeight: height)
                .shadow(radius: elevation)
            VStack{
                views()
            }
        }
        .padding(20)
        .onTapGesture {
            click()
        }
        .onLongPressGesture(minimumDuration: 0.3, pressing: { pressing in isTap = pressing
            
            
        }, perform: {
            longClick()
        })
    }
}

#Preview {
    Card(focusColor: Color.blue.opacity(0.5)) {
        AnyView(Text("Hey"))
    }
}
