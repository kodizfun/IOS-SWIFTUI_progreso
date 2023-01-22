

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            DashboardScreen().tabItem({
                Image(systemName: "chart.bar.xaxis")
                Text("Tableau de bord")
            })
            SkillsScreen().tabItem({
                Image(systemName: "graduationcap.fill")
                Text("Compétences")
            })
            ProfileScreen().tabItem({
                Image(systemName: "person.fill")
                Text("Profil")
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
