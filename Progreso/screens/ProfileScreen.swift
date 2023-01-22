/**
 
 NOTIONS ABORDÉES SWIFT :
 - Constante, Variable
 - Types : Int, Double, String, Bool
 - Interpolation
 - Introduction rapide au conditionnel pour manipuler le type Bool, faire passer le principe "data + logique = la base de la programmation"
 
 
 NOTIONS ABORDÉES SWIFTUI :
 
 - Layout : ScrollView, VStack, HStack, Group
 - View : Image, Text, Spacer
 - Modifier : padding, resizable, frame, clipShape, font, foregroundColor
 
 **/

import SwiftUI

struct ProfileScreen: View {
    
    
    let spacingSection: Double = 30.0
    let profileImage: String = "image_profil"
    var age: Int = 36
    let name: String = "John Doe"
    let email: String = "johndoe@secret-mail.com"
    let bio: String = "Je suis un apprenant autodidacte avec une passion pour la programmation et la technologie."
    
    @State var showPersonalInfo: Bool = true
    var buttonTitle: String {
        showPersonalInfo ? "Cacher" : "Montrer"
    }
    
    var body: some View {
        ScrollView() {
            
            ZStack {
                Color.orange
                VStack(spacing: 18) {
                    Spacer().frame(height: 24)
                    Image(profileImage)
                        .resizable()
                        .frame(width: 200, height: 200)
                        .clipShape(Circle())
                    
                    Text(name)
                        .font(.title)
                    if (showPersonalInfo) {
                        Text("\(age) ans")
                        Text(email).font(.subheadline)
                    }
                    
                    Button(buttonTitle) {
                        showPersonalInfo.toggle()
                    }.bold()
                    
                    Spacer().frame(height: 24)
                    
                }
                .foregroundColor(.white)
            }
            
            
            VStack(alignment: .leading, spacing: 16) {
                
                Group {
                    Text("Bio")
                        .foregroundColor(.orange)
                        .font(.headline)
                    Text(bio)
                        .font(.body)
                }
                
                Spacer().frame(height: spacingSection)
                
                Group {
                    Text("Compétences")
                        .foregroundColor(.orange)
                        .font(.headline)
                    HStack {
                        Image(systemName: "keyboard.fill")
                        Text("Swift")
                            .font(.body)
                    }
                    HStack {
                        Image(systemName: "keyboard.fill")
                        Text("Python")
                            .font(.body)
                    }
                    HStack {
                        Image(systemName: "keyboard.fill")
                        Text("JavaScript")
                            .font(.body)
                    }
                }
                
                Spacer().frame(height: spacingSection)
                
                Group {
                    Text("Passions")
                        .foregroundColor(.orange)
                        .font(.headline)
                    HStack {
                        Image(systemName: "figure.roll.runningpace")
                        Text("Handisport")
                            .font(.body)
                    }
                    HStack {
                        Image(systemName: "popcorn.fill")
                        Text("Cinéma")
                            .font(.body)
                    }
                    HStack {
                        Image(systemName: "books.vertical.fill")
                        Text("Lecture")
                            .font(.body)
                    }
                }
                
            }
            .padding()
        }
    }
}

struct ProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreen()
    }
}
