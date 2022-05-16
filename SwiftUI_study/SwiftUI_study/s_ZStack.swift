//
//  s_ZStack.swift
//  SwiftUI_study
//
//  Created by apple on 2022/5/13.
//

import SwiftUI

struct s_ZStack: View {
    var body: some View {
        VStack {
            HeaderView()
            HStack {
                BasicView()
                ZStack {
                    PricingView(title: "Basic", price: "$9", textColor: .black, bgColor: Color(red: 240/255, green: 240/255, blue: 240/255))
                     Text("Best for designer")
                            .font(.system(.caption, design: .rounded))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(5)
                            .background(Color(red: 255/255, green: 183/255, blue: 37/255))
                            .offset(x: 0, y: 88)
                }
            }
        }
        .background(.clear)
    }
}

struct s_ZStack_Previews: PreviewProvider {
    static var previews: some View {
        s_ZStack()
    }
}
