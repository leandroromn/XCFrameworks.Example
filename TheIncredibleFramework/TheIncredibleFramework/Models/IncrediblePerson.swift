import Foundation

public class IncrediblePerson {
    
    public let name: String
    public let email: String
    
    public init(name: String, email: String) {
        self.name = name
        self.email = email
    }
    
    public func formattedInformation() -> String {
        return "Hi! My name is \(name) and my email is \(email). Please, contact me."
    }
    
}
