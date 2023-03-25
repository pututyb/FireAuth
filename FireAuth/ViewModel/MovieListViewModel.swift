//
//  MovieListViewModel.swift
//  FireAuth
//
//  Created by Putut Yusri Bahtiar on 24/03/23.
//

import Foundation
import FirebaseFirestore


class MovieListViewModel: ObservableObject {
    @Published var movie = [Movie]()
    private var db = Firestore.firestore().collection("movie")
    
    func addData() {
        
    }
    
    
    func fetchData() {
        db.addSnapshotListener { (querySnapshot, error) in
            guard let documents = querySnapshot?.documents else {
                print("no documents")
                return
            }
            
            self.movie = documents.compactMap { queryDocumentSnapshot -> Movie? in
                return try? queryDocumentSnapshot.data(as: Movie.self)
            }
            
            self.fetchTheatersData()
        }
    }
}
