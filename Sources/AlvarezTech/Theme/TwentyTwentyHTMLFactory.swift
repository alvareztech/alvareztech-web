import Publish
import Plot

struct TwentyTwentyHTMLFactory: HTMLFactory {
    
    func makeIndexHTML(for index: Index, context: PublishingContext<AlvarezTech>) throws -> HTML {
        HTML(
            .head(
                .encoding(.utf8),
                .title(index.title),
                .viewport(.accordingToDevice),
                .stylesheet("TwentyTwentyStyles.css"),
                .stylesheet("styles.css"),
                .script(.src("/essential.js")),
                .link(.href("https://fonts.googleapis.com/css?family=Fira+Code&display=swap"), .rel(.stylesheet))
            ),
            .body(
                .header(for: context, selectedSection: nil),
                .section(
                    .class("hero is-primary is-medium"),
                    .div(
                        .class("hero-body"),
                        .div(
                            .class("container"),
                            .div(
                                .class("content"),
                                .h1(
                                    .class("title"),
                                    .text(index.title)
                                ),
                                .p(
                                    .class("subtitle"),
                                    .text("iOS, Android development trainer. Here I share everything I do. Tutorials, code and more.")
                                )
                            )
                        )
                    )
                ),
                .items(
                    for: context.allItems(
                        sortedBy: \.date,
                        order: .descending
                    ),
                    on: context.site
                ),
                .footer(for: context.site)
            )
        )
    }
    
    func makeSectionHTML(for section: Section<AlvarezTech>, context: PublishingContext<AlvarezTech>) throws -> HTML {
        HTML(
            .head(for: section, on: context.site, stylesheetPaths: ["/TwentyTwentyStyles.css", "/styles.css"]),
            .body(
                .header(for: context, selectedSection: section.id),
                .bigTitle(section.title, subtitle: section.description),
                .if(!section.body.isEmpty,
                        .div(
                            .class("container"),
                            .div(
                                .class("content is-medium"),
                                .contentBody(section.body)
                            )
                        )
                ),
                .items(for: section.items, on: context.site),
                .footer(for: context.site)
            )
        )
    }
    
    func makeItemHTML(for item: Item<AlvarezTech>, context: PublishingContext<AlvarezTech>) throws -> HTML {
        HTML(
            .head(for: item, on: context.site, stylesheetPaths: ["/TwentyTwentyStyles.css", "/styles.css"]),
            .body(
                .header(for: context, selectedSection: item.sectionID),
                .section(
                    .class("section"),
                    .div(
                        .class("container"),
                        .div(
                            .class("content is-medium"),
                            .h1(.text(item.title)),
                            .smallTags(item: item, on: context.site),
                            .contentBody(item.body)
                        )
                    )
                ),
                .footer(for: context.site)
            )
        )
    }
    
    func makePageHTML(for page: Page, context: PublishingContext<AlvarezTech>) throws -> HTML {
        HTML(
            .head(for: page, on: context.site, stylesheetPaths: ["/TwentyTwentyStyles.css", "/styles.css"]),
            .body(
                .header(for: context, selectedSection: nil),
                .bigTitle(page.title),
                .section(
                    .class("section"),
                    .div(
                        .class("container"),
                        .div(
                            .class("content is-medium"),
                            .contentBody(page.body)
                        )
                    )
                ),
                .footer(for: context.site)
            )
        )
    }
    
    func makeTagListHTML(for page: TagListPage, context: PublishingContext<AlvarezTech>) throws -> HTML? {
        HTML(
            .head(for: page, on: context.site, stylesheetPaths: ["/TwentyTwentyStyles.css", "/styles.css"]),
            .body(
                .header(for: context, selectedSection: nil),
                .bigTitle("Tags"),
                .section(
                    .class("section"),
                    .div(
                        .class("container tags are-large"),
                        .forEach(page.tags.sorted()) { tag in
                            .span(
                                .class("tag is-link is-light"),
                                .a(
                                    .href(context.site.path(for: tag)),
                                    .text(tag.string.uppercased())
                                )
                            )
                        }
                    )
                ),
                .footer(for: context.site)
            )
        )
    }
    
    func makeTagDetailsHTML(for page: TagDetailsPage, context: PublishingContext<AlvarezTech>) throws -> HTML? {
        HTML(
            .head(for: page, on: context.site, stylesheetPaths: ["/TwentyTwentyStyles.css", "/styles.css"]),
            .body(
                .header(for: context, selectedSection: nil),
                .bigTitle(page.tag.string.uppercased()),
                .items(
                    for: context.items(
                        taggedWith: page.tag,
                        sortedBy: \.date,
                        order: .descending
                    ),
                    on: context.site
                ),
                .footer(for: context.site)
            )
        )
    }
}
