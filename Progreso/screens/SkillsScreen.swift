/**
 
 NOTIONS ABORDÉES SWIFT :
 
 - Constante
 - Types : String
 
 
 NOTIONS ABORDÉES SWIFTUI :
 
 - Layout : List, Section
 - View : Text
 - Modifier : font, foregroundColor
 
 **/

import SwiftUI

struct SkillsScreen: View {
    
    let headerC1: String = "Compétences - C1"
    let headerC2: String = "Compétences - C2"
    let headerC3: String = "Compétences - C3"
    
    let headlineC1: String = "Conception d'une app mobile à partir d'une problèmatique"
    let headlineC2: String = "Développement d'une application mobile iOS"
    let headlineC3: String = "Gestion de projet, qualité et collaboration"
    
    let skillC11: String = "C1.1 : Maquetter une application mobile"
    let skillC12: String = "C1.2 : Définir la liste de fonctionnalités de son application"
    let skillC21: String = "C2.1 : Exploiter l'IDE Xcode pour gérer son projet"
    let skillC22: String = "C2.2 : Développer l'interface d'une application à un écran"
    let skillC23: String = "C2.3 : Développer l'interface d'une application multi écran en gérant la navigation"
    let skillC24: String = "C2.4 : Développer la logique d'une application mobile à l'aide du langage Swift et de la programmation orientée objet"
    let skillC25: String = "C2.5 : Respecter les normes d'interface graphique (cf Human Interface Guidelines)"
    let skillC31: String = "C3.1 : Trouver des ressources pour supporter le développement"
    let skillC32: String = "C3.2 : Travailler en équipe"
    let skillC33: String = "C3.3 : Organiser le travail d'équipe"
    let skillC34: String = "C3.4 : Concevoir un support de présentation clair de son application mobile"
    let skillC35: String = "C3.5 : S'exprimer en public pour présenter son travail"
    
    var body: some View {
        List {
            
            Section(header: VStack (alignment: .leading) {
                Text(headerC1.uppercased()).foregroundColor(.orange)
                Text(headlineC1).font(.headline).foregroundColor(.gray)
            }) {
                Text(skillC11)
                Text(skillC12)
            }.headerProminence(.increased)
            
            Section(header: VStack (alignment: .leading) {
                Text(headerC2.uppercased()).foregroundColor(.orange)
                Text(headlineC2).font(.headline).foregroundColor(.gray)
            }) {
                Text(skillC21)
                Text(skillC22)
                Text(skillC23)
                Text(skillC23)
                Text(skillC25)
            }.headerProminence(.increased)
            
            Section(header: VStack (alignment: .leading) {
                Text(headerC3.uppercased()).foregroundColor(.orange)
                Text(headlineC3).font(.headline).foregroundColor(.gray)
            }) {
                Text(skillC31)
                Text(skillC32)
                Text(skillC33)
                Text(skillC34)
                Text(skillC35)
            }.headerProminence(.increased)
        }
    }
}

struct SkillsScreen_Previews: PreviewProvider {
    static var previews: some View {
        SkillsScreen()
    }
}
