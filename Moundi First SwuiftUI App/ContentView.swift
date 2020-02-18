//
//  ContentView.swift
//  Moundi First SwuiftUI App
//
//  Created by user165586 on 14/02/2020.
//  Copyright © 2020 user165586. All rights reserved.
//

import SwiftUI
import Combine

struct ContentView: View {
    @ObservedObject var data = PersonSet([
        Person(nom: "Moih", prenom: "Toik", departement: "Herault", job: "Ingenieur")
    ])
    @State private var showAddView: Bool = false
    
    var body: some View {
        
        NavigationView {
            VStack{
                Text("Hello,Moundi ")
                
                List {
                    ForEach(data.listPersonnes){ pers in
                        NavigationLink(destination: InfoView(person: pers)){
                            ListCell(person: pers)
                        }
                    }.onDelete{ (index) in
                        self.data.listPersonnes.remove(atOffsets: index
                        )
                    }
                    
                }.navigationBarTitle("Personnes")
                
                /*
                    NavigationLink(destination: AddView(listP: data) ){
                    Text("Ajouter + ")
                }*/
                
                Button(action: {self.showAddView.toggle()}) {
                    Text("Ajouter +")
                }.sheet(isPresented: $showAddView, content: {
                    AddView(listP: self.data, show: self.$showAddView)
                })
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


