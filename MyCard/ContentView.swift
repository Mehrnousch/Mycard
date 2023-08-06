//
//  ContentView.swift
//  MyCard
//
//  Created by mehrnoush abdinian on 06.08.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(UIColor(red: 0.64, green: 0.61, blue: 1.00, alpha: 1.00))
                .edgesIgnoringSafeArea(.all)
            VStack {
                
                Image("Mehrnoush")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150.0, height: 150.0)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                )
                Text("Mehrnoush Abdinian")
                    .font(Font.custom("Lobster-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+49 ... ... ....", imageName: "phone.fill")
                InfoView(text: "m.abdinian1989@gmail.com", imageName: "envelope.fill")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
