//
//  InfoView.swift
//  MyCard
//
//  Created by mehrnoush abdinian on 06.08.23.
//

import SwiftUI

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
            .overlay {
                HStack {
                    Image(systemName: imageName)
                        .foregroundColor(.accentColor)
                    Text(text)
                        .foregroundColor(.black)
                        .foregroundColor(Color("Info Color")) // Custom color for dark mode
                }
            }
            .padding()
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "phone.fill")
//            .previewLayout(.sizeThatFits)
    }
}

