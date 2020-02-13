import Foundation
import Publish
import Plot
import SplashPublishPlugin

// This type acts as the configuration for your website.
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
        // Add any site-specific metadata that you want to use here.
    }
    
    // Update these properties to configure your website:
    var url = URL(string: "https://alvarez.tech")!
    var name = "AlvarezTech"
    var description = "Tutorials, code and more."
    var language: Language { .english }
    var imagePath: Path? { nil }
}

// This will generate your website using the built-in Foundation theme:
try AlvarezTech().publish(withTheme: .twentyTwenty, additionalSteps: [], plugins: [.splash(withClassPrefix: "")])
