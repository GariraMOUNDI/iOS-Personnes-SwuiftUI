//
//  ListCell.swift
//  Moundi First SwuiftUI App
//
//  Created by user165586 on 18/02/2020.
//  Copyright © 2020 user165586. All rights reserved.
//

import SwiftUI

struct ListCell: View {
    
    var person: Person
    var body: some View {
        
        HStack(spacing: 50.0) {
            HStack(alignment: .center, spacing: 20.0) {
                Text(person.nom)
                    .fontWeight(.bold)
                    .frame(width: 100.0)
                Text(person.prenom)
                    .fontWeight(.bold)
                    .frame(width: 100.0)
            }
            HStack{
                Text(person.job)
                    .multilineTextAlignment(.trailing)
            }
        }
        
        
    }
}

struct ListCell_Previews: PreviewProvider {
    static var previews: some View {
        ListCell(person: Person(nom: "Moisdfsdfsdfsdfsdfsdf", prenom: "Toisdfsdfsdfsdsdfsdffs", departement: "IG", job: "Ingenieur"))
    }
}
