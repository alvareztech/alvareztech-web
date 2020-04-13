import Foundation
import Publish

extension Date {
    
    var literal: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMM dd, yyyy"
        return formatter.string(from: self)
    }
}

extension Tag {
    
    var iconPath: String {
        if self.string.contains("google") {
            return "/icons/google.jpg"
        }
        switch self.string {
        case "algorithm", "ignite", "api", "codelab", "owasp":
            return "/icons/code.jpg"
        case "apple", "ios", "macos":
            return "/icons/apple.jpg"
        default:
            return "/icons/\(self.string.replacingOccurrences(of: " ", with: "-").lowercased()).jpg"
        }
    }
}
