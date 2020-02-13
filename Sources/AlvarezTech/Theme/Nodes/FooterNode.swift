import Publish
import Plot

extension Node where Context: HTML.BodyContext {
    
    static func footer(for site: AlvarezTech) -> Node {
        return .footer(
            .class("footer"),
            .div(
                .class("content has-text-centered"),
                .p(
                    .text("By "),
                    .strong(.text("Daniel Alvarez")),
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
