//
//  TitleViewSwiftUI.swift
//  TravelVista
//
//  Created by Pascal Jesenberger on 14/06/2025.
//

import SwiftUI

struct TitleViewSwiftUI: View {
    var country: String
    var capital: String
    var rate: Int
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(country)
                    .font(.system(size: 22, weight: .medium))
                    .foregroundColor(.customBlue)
                
                Text(capital)
                    .font(.system(size: 17))
                    .foregroundColor(Color(.darkGray))
            }
            Spacer()
            
            RateViewSwiftUI(rate: rate)
        }
        .padding()
    }
}

#Preview {
    TitleViewSwiftUI(country: "France", capital: "Paris", rate: 4)
}
