import Foundation
import Publish
import Plot
import SplashPublishPlugin

struct AlvarezTech: Website {
    enum SectionID: String, WebsiteSectionID {
        // case articles
        case tutorials
        case videos
        case basics
        case tips
        case projects
    }
    
    struct ItemMetadata: WebsiteItemMetadata {
        var language: String?
        var draft: Bool? = false
    }
    
    var url = URL(string: "https://alvarez.tech")!
//    var url = URL(string: "https://alvarez-technologies.web.app")!
    var name = "ALVAREZ.tech"
    var description = "iOS, Android, Java, Kotlin & Swift tutorials, videos, projects, code and more."
    var language: Language { .english }
    var imagePath: Path? { "images/icon.png" }
}

// This will generate your website using the built-in Foundation theme:
try AlvarezTech().publish(withTheme: .twentyTwenty, additionalSteps: [], plugins: [.splash(withClassPrefix: "")])
