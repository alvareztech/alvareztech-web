import Publish
import Plot

struct TwentyTwentyHTMLFactory: HTMLFactory {
    
    func makeIndexHTML(for index: Index, context: PublishingContext<AlvarezTech>) throws -> HTML {
        HTML(
            .head(for: index, on: context.site, stylesheetPaths: ["/styles.css?v=\(context.site.stylesVersion)"]),
            .body(
                .class("page-template"),
                .div(
                    .class("site-wrapper"),
                    .navigationBar(for: context, selectedSection: nil),
                    .bigTitle("Hello! I am Daniel, a software engineer.", subtitle: "Here I share everything I do. Tutorials, code and more."),
                    .main(
                        .class("site-main outer"),
                        .div(
                            .class("inner"),
                            .items(
                                for: context.allItems(
                                    sortedBy: \.date,
                                    order: .descending
                                ).filter { $0.metadata.draft != true },
                                on: context.site
                            )
                        )
                    ),
                    .footer(for: context.site)
                )
            )
        )
    }
    
    func makeSectionHTML(for section: Section<AlvarezTech>, context: PublishingContext<AlvarezTech>) throws -> HTML {
        HTML(
            .head(for: section, on: context.site, stylesheetPaths: ["/styles.css?v=\(context.site.stylesVersion)"]),
            .body(
                .class("page-template"),
                .div(
                    .class("site-wrapper"),
                    .navigationBar(for: context, selectedSection: section.id),
                    .bigTitle(section.title, subtitle: section.description),
                    .main(
                        .class("site-main outer"),
                        .div(
                            .class("inner"),
                            .if(!section.body.isEmpty,
                                .contentBody(section.body)
                            ),
                            .items(for: section.items.filter { $0.metadata.draft != true }, on: context.site)
                        )
                    ),
                    .footer(for: context.site)
                )
            )
        )
    }
    
    func makeItemHTML(for item: Item<AlvarezTech>, context: PublishingContext<AlvarezTech>) throws -> HTML {
        HTML(
            .lang(Language(rawValue: (item.metadata.language ?? Language.english.rawValue))!),
            .head(for: item, on: context.site, stylesheetPaths: ["/styles.css?v=\(context.site.stylesVersion)"]),
            .body(
                .class("post-template"),
                .div(
                    .class("site-wrapper"),
                    .navigationBar(for: context, selectedSection: item.sectionID),
                    .main(
                        .class("site-main outer"),
                        .div(
                            .class("inner"),
                            .article(
                                .class("post-full post"),
                                .header(
                                    .class("post-full-header"),
                                    .section(
                                        .class("post-full-tags"),
                                        .a(
                                            .href(context.sections[item.sectionID].path),
                                            .text(context.sections[item.sectionID].title)
                                        )
                                    ),
                                    .h1(
                                        .class("post-full-title"),
                                        .text(item.title)
                                    ),
                                    .p(
                                        .class("post-full-custom-excerpt"),
                                        .text(item.description)
                                    ),
                                    .div(
                                        .class("post-full-byline"),
                                        .section(
                                            .class("post-full-byline-content"),
                                            .ul(
                                                .class("author-list"),
                                                .li(
                                                    .class("author-list-item"),
                                                    .a(
                                                        .class("author-avatar"),
                                                        .href(context.site.path(for: item.tags.first!)),
                                                        .img(
                                                            .class("author-profile-image"),
                                                            .src(item.tags.first!.iconPath),
                                                            .alt("")
                                                        )
                                                    )
                                                )
                                            ),
                                            .section(
                                                .class("post-full-byline-meta"),
                                                .h4(
                                                    .class("author-name"),
                                                    .forEach(item.tags) { tag in
                                                        .span(
                                                            .a(
                                                                .href(context.site.path(for: tag)),
                                                                .text(tag.string)
                                                            ),
                                                            .span(
                                                                .class("bull"),
                                                                .text("•")
                                                            )
                                                        )
                                                    },
                                                    .text(item.metadata.language ?? Language.english.rawValue)
                                                ),
                                                .div(
                                                    .class("byline-meta-content"),
                                                    .element(named: "time", nodes: [
                                                        .class("byline-meta-date"),
                                                        .attribute(named: "datetime", value: "\(item.date)"),
                                                        .text(item.date.literal)
                                                    ]),
                                                    .span(
                                                        .class("byline-reading-time"),
                                                        .span(
                                                            .class("bull"),
                                                            .text("•")
                                                        ),
                                                        .text("Updated \(item.lastModified.literal)")
                                                    )
                                                )
                                            )
                                        )
                                    )
                                ),
                                .section(
                                    .class("post-full-content"),
                                    .div(
                                        .class("post-content"),
                                        .unwrap(item.video) {
                                            .element(named: "figure", nodes: [
                                                .class("kg-card kg-embed-card"),
                                                .div(
                                                    .class("fluid-width-video-container"),
                                                    .div(
                                                        .class("fluid-width-video-wrapper"),
                                                        .style("padding-top: 56.25%;"),
                                                        .videoPlayer(for: $0)
                                                    )
                                                )
                                            ])
                                        },
                                        .contentBody(item.body)
                                    )
                                )
                            )
                        )
                    ),
                    .footer(for: context.site)
                )
            )
        )
    }
    
    func makePageHTML(for page: Page, context: PublishingContext<AlvarezTech>) throws -> HTML {
        HTML(
            .head(for: page, on: context.site, stylesheetPaths: ["/styles.css?v=\(context.site.stylesVersion)"]),
            .body(
                .class("page-template"),
                .div(
                    .class("site-wrapper"),
                    .navigationBar(for: context, selectedSection: nil),
                    .main(
                        .class("site-main outer"),
                        .div(
                            .class("inner"),
                            // .bigTitle(page.title, subtitle: page.description),
                            .article(
                                .class("post-full post no-image page no-image"),
                                .header(
                                    .class("post-full-header"),
                                    .h1(
                                        .class("post-full-title"),
                                        .text(page.title)
                                    )
                                ),
                                .section(
                                    .class("post-full-content"),
                                    .div(
                                        .class("post-content"),
                                        .contentBody(page.body)
                                    )
                                )
                            )
                        )
                    ),
                    .footer(for: context.site)
                )
            )
        )
    }
    
    func makeTagListHTML(for page: TagListPage, context: PublishingContext<AlvarezTech>) throws -> HTML? {
        HTML(
            .head(for: page, on: context.site, stylesheetPaths: ["/styles.css?v=\(context.site.stylesVersion)"]),
            .body(
                .class("page-template"),
                .div(
                    .class("site-wrapper"),
                    .navigationBar(for: context, selectedSection: nil),
                    .bigTitle("Tags"),
                    .main(
                        .class("site-main outer"),
                        .div(
                            .class("inner"),
                            .section(
                                .class("post-full-content"),
                                .ul(
                                    .forEach(page.tags.sorted()) { tag in
                                        .li(
                                            .a(
                                                .href(context.site.path(for: tag)),
                                                .text(tag.string.capitalized)
                                            )
                                        )
                                    }
                                )
                            )
                        )
                    ),
                    .footer(for: context.site)
                )
            )
        )
    }
    
    func makeTagDetailsHTML(for page: TagDetailsPage, context: PublishingContext<AlvarezTech>) throws -> HTML? {
        HTML(
            .head(for: page, on: context.site, stylesheetPaths: ["/styles.css?v=\(context.site.stylesVersion)"]),
            .body(
                .class("page-template"),
                .div(
                    .class("site-wrapper"),
                    .navigationBar(for: context, selectedSection: nil),
                    .bigTitle(page.tag.string.capitalized, subtitle: "\(context.items(taggedWith: page.tag).count) items"),
                    .main(
                        .class("site-main outer"),
                        .items(
                            for: context.items(
                                taggedWith: page.tag,
                                sortedBy: \.date,
                                order: .descending
                            ).filter { $0.metadata.draft != true },
                            on: context.site
                        )
                    ),
                    .footer(for: context.site)
                )
            )
        )
    }
}
