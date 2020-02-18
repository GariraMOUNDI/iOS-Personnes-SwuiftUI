//
//  AddView.swift
//  Moundi First SwuiftUI App
//
//  Created by user165586 on 18/02/2020.
//  Copyright © 2020 user165586. All rights reserved.
//

import SwiftUI
import Combine

struct AddView: View {
    @ObservedObject var listP: PersonSet
    @State var person = Person(nom: "", prenom: "", departement: "", job: "")
    
    var body: some View {
        Form {
            HStack{
            Text("Nom : ")
            TextField("Entrer un nom", text: $person.nom)
            }
            Button(action: {
                self.listP.listPersonnes.append(self.person)
                self.person = Person(nom: "", prenom: "", departement: "", job: "")
            }) {
            Text("Ok")
            }
        }
            
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView(listP: PersonSet([]), person: Person(nom: "", prenom: "", departement: "", job: ""))
    }
}
