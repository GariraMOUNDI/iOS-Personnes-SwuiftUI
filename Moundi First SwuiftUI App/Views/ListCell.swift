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
        
        HStack(spacing: 80.0) {
            HStack(alignment: .center, spacing: 20.0) {
                Text(person.nom)
                    .fontWeight(.bold)
                Text(person.prenom)
                    .fontWeight(.bold)
            }
            HStack{
                Text(person.job)
                    .multilineTextAlignment(.trailing)
            }
            
        }
        .padding(.leading, 10.0)
        .padding(.trailing, 10.0)
        
        
    }
}

struct ListCell_Previews: PreviewProvider {
    static var previews: some View {
        ListCell(person: Person(nom: "Moisdfsdfsdfsdfsdfsdf", prenom: "Toisdfsdfsdfsdsdfsdffs", departement: "IG", job: "Ingenieur"))
    }
}
