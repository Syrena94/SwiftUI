//
//  s_HStack.swift
//  SwiftUI_study
//
//  Created by apple on 2022/5/13.
//

import SwiftUI

struct s_HStack: View {
    var body: some View {
        VStack {
            HeaderView()
            HStack {
                BasicView()
                PricingView(title: "Pro", price: "$19", textColor: .black, bgColor: Color(red: 240/255, green: 240/255, blue: 240/255),icon: "heart.fill")
            }
        }
        .background(.clear)
    }
}

struct s_HStack_Previews: PreviewProvider {
    static var previews: some View {
        s_HStack()
    }
}

struct HeaderView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 2) {
            Text("Choose")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.black)
            Text("Your Plan")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.black)
        }
    }
}

struct BasicView: View {
    var body: some View {
        VStack {
            Text("Basic")
                .font(.system(.title, design: .rounded))
                .fontWeight(.black)
                .foregroundColor(.white)
            Text("$9")
                .font(.system(size: 40, weight: .heavy, design: .rounded))
                .foregroundColor(.white)
            Text("per month")
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(minWidth: 0,  maxWidth: .infinity,maxHeight: 100)
        .padding(40)
        .background(Color.purple)
        .cornerRadius(10)
    }
}

struct PricingView: View {
    var title: String
    var price: String
    var textColor: Color
    var bgColor: Color
    var icon:String?
    
    var body: some View {
        VStack {
            icon.map({
                Image(systemName: $0)
                    //.foregroundColor(.purple)
            })
            Text(title)
                .font(.system(.title, design: .rounded))
                .fontWeight(.black)
                .foregroundColor(textColor)
            Text(price)
                .font(.system(size: 40, weight: .heavy, design: .rounded))
                .foregroundColor(textColor)
            Text("per month")
                .font(.headline)
                .foregroundColor(.gray)
        }
        .frame(minWidth: 0,  maxWidth: .infinity,maxHeight: 100)
        .padding(40)
        .background(bgColor)
        .cornerRadius(10)
    }
}
