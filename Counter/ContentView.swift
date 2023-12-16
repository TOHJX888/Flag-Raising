//
//  ContentView.swift
//  Counter
//
//  Created by RGS on 1/4/23.
//

import SwiftUI
struct ContentView: View {
    
    @State private var counter = 0
    
    var body: some View {
        VStack {
            Text("\(counter)")
                .font(.system(size: 20))
            
            HStack(alignment: .bottom, spacing: -10) {
                Rectangle()
                    .frame(width: 10)
                
                Text("🇸🇬")
                    .font(.system(size:100))
                    .offset(y: CGFloat(-counter * 10))
            }
            
            Button {
                if counter <= 50 {
                    counter += 1 }
            } label: {
                Text("Click to raise flag")
                    .font(.system(size: 25))
                    .padding()
                    .foregroundColor(.black)
                    .background(LinearGradient(colors: [.red, .white], startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(30)
            }
        }
    }
}
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
