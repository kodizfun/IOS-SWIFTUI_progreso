
import Foundation

class User: ObservableObject {
    
    let profileImage: String = "image_profil"
    let name: String = "John Doe"
    let email: String = "johndoe@secret-mail.com"
    var age: Int = 36
    
    @Published var globalProgression: Int = 0
    @Published var c1Progression: Int = 0
    @Published var c2Progression: Int = 0
    @Published var c3Progression: Int = 0
    
    @Published var isC11Acquired: Bool = false {
        didSet {
            calculateC1Progression()
            calculateGlobalProgression()
        }
    }
    @Published var isC12Acquired: Bool = false
    
    @Published var isC21Acquired: Bool = false
    @Published var isC22Acquired: Bool = false
    @Published var isC23Acquired: Bool = false
    @Published var isC24Acquired: Bool = false
    @Published var isC25Acquired: Bool = false
    
    @Published var isC31Acquired: Bool = false
    @Published var isC32Acquired: Bool = false
    @Published var isC33Acquired: Bool = false
    @Published var isC34Acquired: Bool = false
    @Published var isC35Acquired: Bool = false
    
    @Published var bio: String = "Je suis un apprenant autodidacte avec une passion pour la programmation et la technologie."
    @Published var showPersonalInfo: Bool = true
    
    init() {
        calculateC1Progression()
        calculateGlobalProgression()
    }
    
    func calculateGlobalProgression() {
        globalProgression = Int((c1Progression + c2Progression + c3Progression)/3)
    }
    
    func calculateC1Progression() {
        if(isC11Acquired && isC12Acquired) {
            c1Progression = 100
            return
        }
        if(isC11Acquired || isC12Acquired) {
            c1Progression = 50
            return
        }
        c1Progression = 0
        
    }
}
