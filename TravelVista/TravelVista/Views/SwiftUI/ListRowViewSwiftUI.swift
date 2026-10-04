//
//  ListRowViewSwiftUI.swift
//  TravelVista
//
//  Created by Pascal Jesenberger on 16/06/2025.
//

import SwiftUI

struct ListRowViewSwiftUI: View {
    let country: Country
    
    var body: some View {
        HStack {
            Image(country.pictureName)
                .resizable()
                .clipShape(Circle())
                .frame(width: 52, height: 52)
            
            VStack(alignment: .leading) {
                Text(country.name)
                    .font(.system(size: 20))
                    .foregroundColor(.customBlue)
                
                Text(country.capital)
                    .font(.system(size: 15))
                    .foregroundColor(.black)
            }
            
            Spacer()
            
            Text("\(country.rate)")
                .font(.system(size: 17))
                .foregroundColor(.black)
            
            Image(systemName: "star.fill")
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundColor(.customSand)
        }
    }
}

#Preview {
    ListRowViewSwiftUI(country: Country(
        name: "Canada",
        capital: "Ottawa",
        description: "Lorem Ipsum.",
        rate: 4,
        pictureName: "canada",
        coordinates: Coordinates(latitude: 12.1532, longitude: -51.1319)
    )
    )
}
