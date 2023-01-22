
import SwiftUI

struct ProfieEditionScreen: View {
    
    @EnvironmentObject var user: User
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack {
                Spacer()
                Text("Fermer")
                    .onTapGesture {
                        dismiss()
                    }
            }
            
            Spacer()
            
            Toggle("Afficher les informations personnelles",
                   isOn: $user.showPersonalInfo)
            
            Spacer().frame(height: 50)

            Text("Biographie").font(.headline)
            TextEditor(text: $user.bio)
                .frame(height: 200)
                .foregroundColor(.secondary)
                .cornerRadius(12)
                .border(.gray)
                           
            Spacer()
            
            
        }.padding()
    }
}

struct ProfieEditionScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfieEditionScreen().environmentObject(User())
    }
}
