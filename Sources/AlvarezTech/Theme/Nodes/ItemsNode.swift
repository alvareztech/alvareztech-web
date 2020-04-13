import Publish
import Plot

extension Node where Context: HTML.BodyContext {
    
    static func items(for items: [Item<AlvarezTech>], on site: AlvarezTech, showLanguage: Bool = false, showCategory: Bool = false) -> Node {
        .div(
            .class("inner posts"),
            .div(
                .class("post-feed"),
                .forEach(items) { item in
                    .article(
                        .class("post-card post"),
                        .div(
                            .class("post-card-content"),
                            .a(
                                .class("post-card-content-link"),
                                .href(item.path),
                                .header(
                                    .class("post-card-header"),
                                    .div(
                                        .class("post-card-primary-tag"),
                                        .text(item.sectionID.rawValue.uppercased())
                                    ),
                                    .h2(
                                        .class("post-card-title"),
                                        .text(item.title)
                                    )
                                ),
                                .section(
                                    .class("post-card-excerpt"),
                                    .p(
                                        .text(item.description)
                                    )
                                )
                            ),
                            .unwrap(item.tags.first) {
                                .footer(
                                    .class("post-card-meta"),
                                    .ul(
                                        .class("author-list"),
                                        .li(
                                            .class("author-list-item"),
                                            .a(
                                                .class("static-avatar"),
                                                .href(site.path(for: $0)),
                                                .img(
                                                    .class("author-profile-image"),
                                                    .src($0.iconPath)
                                                )
                                            )
                                        )
                                    ),
                                    .div(
                                        .class("post-card-byline-content"),
                                        .span(
                                            .a(
                                                .href(site.path(for: $0)),
                                                .text($0.string)
                                            )
                                        ),
                                        .span(
                                            .class("post-card-byline-date"),
                                            .element(named: "time", nodes: [
                                                .attribute(named: "datetime", value: "\(item.lastModified)"),
                                                .text("Updated \(item.lastModified.literal)")
                                            ])
                                        )
                                    )
                                )
                            }
                        )
                    )
                }
            )
        )
    }
}
