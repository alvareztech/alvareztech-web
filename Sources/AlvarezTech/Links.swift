import Publish
import Plot
import Ink
import Foundation

extension Plugin {
    
    static var ensureAllItemsAreTagged: Self {
        Plugin(name: "Ensure that all items are tagged") { context in
            let allItems = context.sections.flatMap { $0.items }
            print("There are \(allItems.count) posts")
            for item in allItems {
                guard !item.tags.isEmpty else {
                    throw PublishingError(
                        path: item.path,
                        infoMessage: "Item has no tags"
                    )
                }
            }
        }
    }
    
    static var addExternalLinks: Self {
        Plugin(name: "Add external links") { context in
            context.markdownParser.addModifier(.externalLink)
        }
    }
    
    static var improveImages: Self {
        Plugin(name: "Improve Images") { context in
            context.markdownParser.addModifier(.addImageStyle)
        }
    }
}

public extension Modifier {
    
    static var addImageStyle: Self {
        Modifier(target: .images) { (html, markdown) -> String in
            let path = String(markdown.dropFirst("![".count).dropLast(")".count).drop(while: { $0 != "(" }).dropFirst())
            let alt = String(markdown.firstSubstring(between: "[", and: "]") ?? "")
            let html = HTML(
                .body(
                    .element(named: "figure", nodes: [
                        .class("kg-card kg-image-card"),
                        .img(
                            .class("kg-image"),
                            .src(path),
                            .alt(alt)
                        )
                    ])
                )
            )
            return html.render(indentedBy: nil)
        }
    }
    
    static var externalLink: Self {
        return Modifier(target: .links) { html, markdown in
//            var markdown = markdown.dropFirst().trimmingCharacters(in: .whitespaces)
            print("Markdown: \(markdown)")
            print("HTML: \(html)")

            let h = HTML(
                .body(
                    .a(
                        .class("link"),
                        .href("https://github.com"),
                        .target(.blank),
                        "GitHub"
                    )
                )
            )
            

            return h.render(indentedBy: nil)
        }
    }
}
