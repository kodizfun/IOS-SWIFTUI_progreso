//
//  SkillDetailsScreen.swift
//  Progreso
//
//  Created by Sengsathit SILALAK on 22/01/2023.
//

import SwiftUI

struct SkillDetailsScreen: View {
    
    @EnvironmentObject var user: User
    let description: String = "Je sais créer des maquettes d'interface graphique sur papier et sur un outil en ligne de maquettage (type Marvel) ou avec un support de présentation (type Keynote)"
    
    var body: some View {
        VStack {
            Text(description).font(.headline)
            Toggle(isOn: $user.isC11Acquired){}.labelsHidden()
            Spacer()
        }
        .padding()
        .navigationTitle("Compétence C1.1")
        
    }
}

struct SkillDetailsScreen_Previews: PreviewProvider {
    static var previews: some View {
        SkillDetailsScreen().environmentObject(User())
    }
}
