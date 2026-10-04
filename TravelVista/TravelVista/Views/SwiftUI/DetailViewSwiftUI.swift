//
//  DetailViewSwiftUI.swift
//  TravelVista
//
//  Created by Pascal Jesenberger on 16/06/2025.
//

import SwiftUI

struct DetailView: UIViewControllerRepresentable {
    
    var country: Country
    
    func makeUIViewController(context: Context) -> DetailViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        guard let detailViewController = storyboard.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController else {
            fatalError("Impossible de créer une instance de DetailViewController depuis le storyboard")
        }
        
        detailViewController.country = self.country
        
        return detailViewController
    }
    
    func updateUIViewController(_ uiViewController: DetailViewController, context: Context) {
        
    }
}
