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
    
    @EnvironmentObject var user: User
    let spacingSection: Double = 30.0
    
    @State var showEditScreen: Bool = false

    
    var body: some View {
        NavigationView {
            ScrollView() {
                
                ZStack {
                    Color.orange
                    VStack(spacing: 18) {
                        Spacer().frame(height: 24)
                        Image(user.profileImage)
                            .resizable()
                            .frame(width: 200, height: 200)
                            .clipShape(Circle())
                        
                        Text(user.name)
                            .font(.title)
                        if (user.showPersonalInfo) {
                            Text("\(user.age) ans")
                            Text(user.email).font(.subheadline)
                        }
                        
                        Spacer().frame(height: 24)
                        
                    }
                    .foregroundColor(.white)
                }
                
                
                VStack(alignment: .leading, spacing: 16) {
                    
                    Group {
                        Text("Bio")
                            .foregroundColor(.orange)
                            .font(.headline)
                        Text(user.bio)
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
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            }
            .navigationTitle("Profil")
            .toolbar{
                Button(action: {
                    showEditScreen = true
                }, label: {
                    HStack {
                        Image(systemName: "pencil.tip.crop.circle")
                    }
                    
                })
            }
            .sheet(isPresented: $showEditScreen) {
                ProfieEditionScreen()
            }
        }
    }
}

struct ProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreen().environmentObject(User())
    }
}
