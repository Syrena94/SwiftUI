//
//  Image.swift
//  SwiftUI_study
//
//  Created by apple on 2022/5/13.
//

import SwiftUI

struct s_Image: View {
    var body: some View {
        Image(systemName: "cloud.heavyrain")
            .font(.system(size: 100))
            .foregroundColor(.yellow)
    }
}

struct s_Image_Previews: PreviewProvider {
    static var previews: some View {
        s_Image()
    }
}
