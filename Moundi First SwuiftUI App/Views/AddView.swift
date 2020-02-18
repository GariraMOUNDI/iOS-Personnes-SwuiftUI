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
    @Binding var show: Bool
    
    var body: some View {
        
        VStack{
            Form {
                HStack{
                Text("Nom : ")
                TextField("Entrer un nom", text: $person.nom)
                }
                HStack{
                Text("PreNom : ")
                TextField("Entrer un prenom", text: $person.prenom)
                }
                HStack{
                Text("Département : ")
                TextField("Entrer un departement", text: $person.departement)
                }
                HStack{
                Text("Job : ")
                TextField("Entrer un job", text: $person.job)
                }
                HStack(alignment: .center){
                    Button(action: {
                        self.listP.listPersonnes.append(self.person)
                        self.person = Person(nom: "", prenom: "", departement: "", job: "")
                        self.show.toggle()
                    }){
                        Text("Ok")
                            .font(.largeTitle)
                            .padding(.all, 50.0)
                        .background(Color.green)
                            .foregroundColor(Color.white)
                        .cornerRadius(70)
                    }
                }
                
            }
            .padding(.top, 200.0)
            
            
        }
            
    }
}

struct AddView_Previews: PreviewProvider {
    @State static var show: Bool = true
    static var previews: some View {
        AddView(listP: PersonSet([]), person: Person(nom: "", prenom: "", departement: "", job: ""), show: self.$show)
    }
}
