//
//  Person.swift
//  Moundi First SwuiftUI App
//
//  Created by user165586 on 17/02/2020.
//  Copyright © 2020 user165586. All rights reserved.
//

import Foundation
import Combine

class Person: Identifiable, ObservableObject {
    
    @Published var id = UUID()
    @Published var nom: String!
    @Published var prenom: String!
    @Published var departement: String!
    @Published var job: String!
    
    init(nom: String, prenom: String, departement: String, job: String) {
        self.nom = nom
        self.prenom = prenom
        self.departement = departement
        self.job = job
    }
}
