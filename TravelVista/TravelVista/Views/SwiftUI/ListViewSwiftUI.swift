//
//  ListViewSwiftUI.swift
//  TravelVista
//
//  Created by Pascal Jesenberger on 16/06/2025.
//

import SwiftUI

struct ListViewSwiftUI: View {
    @StateObject private var viewModel = ListViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.regions, id: \.name) { region in
                    Section(header: Text(region.name)) {
                        ForEach(region.countries, id: \.name) { country in
                            NavigationLink(destination: DetailView(country: country)) {
                                ListRowViewSwiftUI(country: country)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Liste de voyages")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ListViewSwiftUI()
}
