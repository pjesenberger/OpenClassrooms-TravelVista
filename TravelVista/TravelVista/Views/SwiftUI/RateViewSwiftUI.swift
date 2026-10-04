//
//  RateViewSwiftUI.swift
//  TravelVista
//
//  Created by Pascal Jesenberger on 14/06/2025.
//

import SwiftUI

struct RateViewSwiftUI: View {
    var rate: Int
    
    var body: some View {
        HStack{
            ForEach(0..<rate, id: \.self) { _ in
                Image(systemName: "star.fill")
                    .resizable()
                    .frame(width: 15, height: 15)
                    .foregroundColor(.yellow)
            }
        }
    }
}

#Preview {
    RateViewSwiftUI(rate: 5)
}
