//
//  s_VStack.swift
//  SwiftUI_study
//
//  Created by apple on 2022/5/13.
//

import SwiftUI

struct s_VStack: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10){
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
        .padding(40)
        .background(.purple)
    }
}

struct s_VStack_Previews: PreviewProvider {
    static var previews: some View {
        s_VStack()
            .previewDevice("iPhone 13")
    }
}
