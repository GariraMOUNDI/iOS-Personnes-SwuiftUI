//
//  PersonSet.swift
//  Moundi First SwuiftUI App
//
//  Created by user165586 on 18/02/2020.
//  Copyright © 2020 user165586. All rights reserved.
//

import Foundation
import Combine


class PersonSet: ObservableObject {
    @Published var listPersonnes: [Person]
    
    init(_ personnes: [Person]) {
        self.listPersonnes = personnes
    }
}
