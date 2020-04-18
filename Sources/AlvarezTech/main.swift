import Foundation
import Publish
import Plot
import SplashPublishPlugin

struct AlvarezTech: Website {
    enum SectionID: String, WebsiteSectionID {
        case articles
        case tutorials
        case videos
        case basics
        case tips
        case projects
        case talks
    }
    
    struct ItemMetadata: WebsiteItemMetadata {
        var language: String?
        var draft: Bool? = false
        var highlight: Bool? = false
    }
    
    var url = URL(string: "https://alvarez.tech")!
//    var url = URL(string: "https://alvarez-technologies.web.app")!
    var name = "ALVAREZ.tech"
    var description = "iOS, Android, Java, Kotlin & Swift tutorials, videos, projects, code and more."
    var language: Language { .english }
    var imagePath: Path? { "images/icon.png" }
    var stylesVersion = 2
}

// This will generate your website using the built-in Foundation theme:
try AlvarezTech().publish(withTheme: .twentyTwenty, additionalSteps: [], plugins: [.splash(withClassPrefix: ""), .ensureAllItemsAreTagged, .improveImages, .createGitHubButtons])
//try AlvarezTech().publish(using: [
//    .installPlugin(.splash(withClassPrefix: "")),
//    .copyResources(),
//    .addMarkdownFiles(),
//    .sortItems(by: \.date, order: .descending),
//    .generateHTML(withTheme: .twentyTwenty, indentation: nil),
//    .generateRSSFeed(
//        including: [.videos],
//        config: .default
//    ),
//    .generateSiteMap(indentedBy: nil),
//    .installPlugin(.ensureAllItemsAreTagged),
//    .installPlugin(.improveImages)
//])
