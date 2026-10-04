//
//  ListViewModel.swift
//  TravelVista
//
//  Created by Pascal Jesenberger on 16/06/2025.
//

import Foundation

class ListViewModel: ObservableObject {
    @Published var regions: [Region] = []
    
    private let service = Service()
    
    init() {
        loadRegions()
    }
    
    private func loadRegions() {
        regions = service.load("Source.json")
    }
}
