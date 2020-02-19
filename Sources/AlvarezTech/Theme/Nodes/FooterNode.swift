import Publish
import Plot

extension Node where Context: HTML.BodyContext {
    
    static func footer(for site: AlvarezTech) -> Node {
        .footer(
            .class("footer"),
            .div(
                .class("content has-text-centered"),
                .p(
                    .text("By "),
                    .strong(
                        .a(
                            .text("Daniel Alvarez"),
                            .href("/about")
                        )
                    ),
                    .text(" © 2020")
                ),
                .p(
                    .a(
                        .text("RSS feed"),
                        .href("/feed.rss")
                    )
                )
            ),
            .script(.src("/essential.js"))
        )
    }
}
