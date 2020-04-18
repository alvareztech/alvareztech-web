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
    
    static var createGitHubButtons: Self {
        Plugin(name: "Create GitHub Buttons") { context in
            context.markdownParser.addModifier(.createGitHubButtons)
        }
    }
}

public extension Modifier {
    
    static var createGitHubButtons: Self {
        Modifier(target: .links) { (html, markdown) -> String in
            let path = String(markdown.dropFirst("[".count).dropLast(")".count).drop(while: { $0 != "(" }).dropFirst())
            let text = String(markdown.firstSubstring(between: "[", and: "]") ?? "")
            let spanish = text == "master es"
            if text == "master" || text == "master es" && path.contains("https://github.com/alvareztech/") {
                let html = HTML(
                    .body(
                        .hr(),
                        .h2(spanish ? "El Código" : "The Code"),
                        .p(
                            .a(
                                .class("github-button"),
                                .href(path),
                                .data(named: "size", value: "large"),
                                .ariaLabel(""),
                                .text(spanish ? "Repositorio" : "Repository")
                            ),
                            .span(" "),
                            .a(
                                .class("github-button"),
                                .href("\(path)/archive/master.zip"),
                                .data(named: "icon", value: "octicon-cloud-download"),
                                .data(named: "size", value: "large"),
                                .ariaLabel(""),
                                .text(spanish ? "Descargar" : "Download")
                            )
                        ),
                        .blockquote(
                            .p(
                                .text(spanish ? "Si encuentras un error, por favor crea un Issue. Lo solucionaremos ASAP." : "If you find an error, please create an Issue. We will fix it ASAP."),
                                .br(),
                                .a(
                                    .class("github-button"),
                                    .href("\(path)/issues/new"),
                                    .data(named: "icon", value: "octicon-issue-opened"),
                                    .ariaLabel(""),
                                    .text(spanish ? "Crear un Issue" : "Create an Issue")
                                )
                            )
                        ),
                        .script(
                            .src("https://buttons.github.io/buttons.js"),
                            .async(),
                            .defer()
                        )
                    )
                )
                return html.render(indentedBy: nil)
            }
            return html
        }
    }
    
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
