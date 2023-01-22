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
    
    let skillsBlocVerticalSpacing: Double = 8
    var globalProgression: Int = 54
    var c1Progression: Int = 50
    var c2Progression: Int = 40
    var c3Progression: Int = 60
    
    var body: some View {
        ScrollView {
            
            VStack(spacing: 24) {
                Text("Progression globale")
                    .font(.system(size: 36))
                Text("\(globalProgression)%")
                    .font(.system(size: 120, weight: .black, design: .serif))
            }.frame(maxWidth: .infinity)
                .background(Color.orange)
                .foregroundColor(.white)
            
            VStack(alignment: .leading) {
                
                Spacer().frame(height: 36)
                
                VStack(alignment: .leading, spacing: skillsBlocVerticalSpacing) {
                    HStack {
                        Text("Bloc de compétences C1")
                        Text(" - ")
                        Text("\(c1Progression)%")
                            .font(.system(size: 18, weight: .black, design: .serif))
                            .foregroundColor(Color.orange)
                    }.font(.headline)
                    
                    HStack {
                        Text("C1.1")
                        Text("acquis").foregroundColor(.teal)
                    }
                    HStack {
                        Text("C1.2")
                        Text("non acquis").foregroundColor(.pink)
                    }
                }
                
                Spacer().frame(height: 36)
                
                VStack(alignment: .leading, spacing: skillsBlocVerticalSpacing)  {
                    HStack {
                        Text("Bloc de compétences C2")
                        Text(" - ")
                        Text("\(c2Progression)%")
                            .font(.system(size: 18, weight: .black, design: .serif))
                            .foregroundColor(Color.orange)
                    }.font(.headline)
                    
                    HStack {
                        Text("C2.1")
                        Text("non acquis").foregroundColor(.pink)
                    }
                    HStack {
                        Text("C2.2")
                        Text("non acquis").foregroundColor(.pink)
                    }
                    HStack {
                        Text("C2.3")
                        Text("acquis").foregroundColor(.teal)
                    }
                    HStack {
                        Text("C2.4")
                        Text("non acquis").foregroundColor(.pink)
                    }
                    HStack {
                        Text("C2.5")
                        Text("acquis").foregroundColor(.teal)
                    }
                }
                
                Spacer().frame(height: 36)
                
                VStack(alignment: .leading, spacing: skillsBlocVerticalSpacing)  {
                    HStack {
                        Text("Bloc de compétences C3")
                        Text(" - ")
                        Text("\(c3Progression)%")
                            .font(.system(size: 18, weight: .black, design: .serif))
                            .foregroundColor(Color.orange)
                    }
                    .font(.headline)
                    
                    HStack {
                        Text("C3.1")
                        Text("acquis").foregroundColor(.teal)
                    }
                    HStack {
                        Text("C3.2")
                        Text("acquis").foregroundColor(.teal)
                    }
                    HStack {
                        Text("C3.3")
                        Text("acquis").foregroundColor(.teal)
                    }
                    HStack {
                        Text("C3.4")
                        Text("non acquis").foregroundColor(.pink)
                    }
                    HStack {
                        Text("C3.5")
                        Text("non acquis").foregroundColor(.pink)
                    }
                }
                
                
            }.frame(maxWidth: .infinity, alignment: .leading).padding(.horizontal, 12)
            
            
        }
        
            
        
    }
}

struct DashboardScreen_Previews: PreviewProvider {
    static var previews: some View {
        DashboardScreen()
    }
}
