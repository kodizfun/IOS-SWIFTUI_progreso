/**
 
 NOTIONS ABORDÉES SWIFT :
 
 - Constante, Variable
 - Types : Int, Double, String
 - Interpolation
 
 
 NOTIONS ABORDÉES SWIFTUI :
 
 - Layout : ScrollView, VStack, HStack
 - View : Text,, Spacer
 - Modifier : padding, frame, font, background, foregroundColor
 
 **/


import SwiftUI
import Charts

struct DashboardScreen: View {
    
    @EnvironmentObject var user: User
    let skillsBlocVerticalSpacing: Double = 8

    var body: some View {
        NavigationView {
            ScrollView {
                
                ZStack {
                    Color.orange
                    VStack(spacing: 24) {
                        Text("Progression globale")
                            .font(.system(size: 36))
                        Text("\(user.globalProgression)%")
                            .font(.system(size: 120, weight: .black, design: .serif))
                    }
                    .foregroundColor(.white)
                }
                
                VStack(alignment: .leading) {
                    
                    Spacer().frame(height: 36)
                    
                    VStack(alignment: .leading, spacing: skillsBlocVerticalSpacing) {
                        HStack {
                            Text("Bloc de compétences C1")
                            Text(" - ")
                            Text("\(user.c1Progression)%")
                                .font(.system(size: 18, weight: .black, design: .serif))
                                .foregroundColor(Color.orange)
                        }.font(.headline)
                        
                        HStack {
                            Text("C1.1")
                            getAcquisitionText(acquisition: user.isC11Acquired)
                        }
                        HStack {
                            Text("C1.2")
                            getAcquisitionText(acquisition: user.isC12Acquired)
                        }
                    }
                    
                    Spacer().frame(height: 36)
                    
                    VStack(alignment: .leading, spacing: skillsBlocVerticalSpacing)  {
                        HStack {
                            Text("Bloc de compétences C2")
                            Text(" - ")
                            Text("\(user.c2Progression)%")
                                .font(.system(size: 18, weight: .black, design: .serif))
                                .foregroundColor(Color.orange)
                        }.font(.headline)
                        
                        HStack {
                            Text("C2.1")
                            getAcquisitionText(acquisition: user.isC21Acquired)
                        }
                        HStack {
                            Text("C2.2")
                            getAcquisitionText(acquisition: user.isC22Acquired)
                        }
                        HStack {
                            Text("C2.3")
                            getAcquisitionText(acquisition: user.isC23Acquired)
                        }
                        HStack {
                            Text("C2.4")
                            getAcquisitionText(acquisition: user.isC24Acquired)
                        }
                        HStack {
                            Text("C2.5")
                            getAcquisitionText(acquisition: user.isC25Acquired)
                        }
                    }
                    
                    Spacer().frame(height: 36)
                    
                    VStack(alignment: .leading, spacing: skillsBlocVerticalSpacing)  {
                        HStack {
                            Text("Bloc de compétences C3")
                            Text(" - ")
                            Text("\(user.c3Progression)%")
                                .font(.system(size: 18, weight: .black, design: .serif))
                                .foregroundColor(Color.orange)
                        }
                        .font(.headline)
                        
                        HStack {
                            Text("C3.1")
                            getAcquisitionText(acquisition: user.isC31Acquired)
                        }
                        HStack {
                            Text("C3.2")
                            getAcquisitionText(acquisition: user.isC32Acquired)
                        }
                        HStack {
                            Text("C3.3")
                            getAcquisitionText(acquisition: user.isC33Acquired)
                        }
                        HStack {
                            Text("C3.4")
                            getAcquisitionText(acquisition: user.isC34Acquired)
                        }
                        HStack {
                            Text("C3.5")
                            getAcquisitionText(acquisition: user.isC35Acquired)
                        }
                    }
                    
                    
                }.frame(maxWidth: .infinity, alignment: .leading).padding(.horizontal, 12)
                
                
            }.navigationTitle("Tableau de bord")
        }
    }
    
    func getAcquisitionText(acquisition: Bool) -> Text {
        return acquisition ?
        Text("acquis").foregroundColor(.teal) :
        Text("non acquis").foregroundColor(.pink)
    }
}

struct DashboardScreen_Previews: PreviewProvider {
    static var previews: some View {
        DashboardScreen().environmentObject(User())
    }
}
