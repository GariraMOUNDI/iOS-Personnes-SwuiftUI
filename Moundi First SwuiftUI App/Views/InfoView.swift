//
//  InfoView.swift
//  Moundi First SwuiftUI App
//
//  Created by user165586 on 18/02/2020.
//  Copyright © 2020 user165586. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    
    var person: Person
    var body: some View {
        VStack(alignment: .leading, spacing: 20.0){
            Text("Nom : \(person.nom)")
                .fontWeight(.heavy)
            Text("Prenom : \(person.prenom)")
            Text("Job : \(person.job)")
            // Spacer()
        }
        .padding()
        
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(person: Person(nom: "Moisdfsdfsdfsdfsdfsdf", prenom: "Toisdfsdfsdfsdsdfsdffs", departement: "IG", job: "Ingenieur"))
    }
}
