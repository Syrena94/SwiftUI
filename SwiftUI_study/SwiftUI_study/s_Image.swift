//
//  Image.swift
//  SwiftUI_study
//
//  Created by apple on 2022/5/13.
//

import SwiftUI

struct s_Image: View {
    var body: some View {
        HStack {
            Image("image01")
                //.font(.system(size: 100))
                //.foregroundColor(.yellow)
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .frame(width: 300)
                //.clipped()//裁剪
                .clipShape(Circle())
                .opacity(0.5)
//                .overlay(//叠加图片
//                    Image(systemName: "heart.fill")
//                        .font(.system(size: 100))
//                )
                .overlay(
                    Rectangle()
                        .foregroundColor(.black)
                        .clipShape(Circle())
                        .opacity(0.2)
                )
                .overlay(
                    Text("abc")
                        .foregroundColor(.red),
                    alignment: .top
                )
        }
    }
}

struct s_Image_Previews: PreviewProvider {
    static var previews: some View {
        s_Image()
            .previewDevice("iPhone 13")
    }
}

