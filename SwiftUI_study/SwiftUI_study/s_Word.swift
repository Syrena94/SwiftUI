//
//  Word.swift
//  SwiftUI_study
//
//  Created by apple on 2022/5/13.
//

import SwiftUI

struct Word: View {
    var body: some View {
        Text("Hello, World!Hello, World!Hello, World!Hello, World!Hello, World!Hello, World!Hello, World!")
            .foregroundColor(.red)
            .fontWeight(.bold)
            //.font(.title)
            .font(.system(size: 20))
            .multilineTextAlignment(.center)
            .lineLimit(2)
            .truncationMode(.tail)//截断模式
            .lineSpacing(10)//行间距
            .padding(1)//内容间距
            //.rotationEffect(.degrees(180))//旋转
            //.rotationEffect(.degrees(48), anchor: UnitPoint(x: 0, y: 0))//支点旋转
            //.rotation3DEffect(.degrees(45), axis: (x:0,y:0,z:1))//3d旋转
            .shadow(color: .gray, radius: 2, x: 1, y: 15)
    }
}

struct Word_Previews: PreviewProvider {
    static var previews: some View {
        Word()
            .previewInterfaceOrientation(.portrait)
    }
}
