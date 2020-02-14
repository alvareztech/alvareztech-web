import Publish
import Plot

extension Node where Context: HTML.BodyContext {
    
    static func smallTags(item: Item<AlvarezTech>, on site: AlvarezTech) -> Node {
        .div(
            .class("tags"),
            .forEach(item.tags) { tag in
                .span(
                    .class("tag is-link is-light"),
                    .a(
                        .href(site.path(for: tag)),
                        .text(tag.string.uppercased())
                    )
                )
            }
        )
    }
    
    static func dateTags(item: Item<AlvarezTech>, on site: AlvarezTech) -> Node {
        .div(
            .class("field is-grouped is-grouped-multiline"),
            .attribute(named: "style", value: "margin-top: 3em;"),
            .div(
                .class("control"),
                .div(
                    .class("tags has-addons"),
                    .span(
                        .class("tag is-dark"),
                        .text("Published")
                    ),
                    .span(
                        .class("tag"),
                        .text(item.date.literal)
                    )
                )
            ),
            .div(
                .class("control"),
                .div(
                    .class("tags has-addons"),
                    .span(
                        .class("tag is-dark"),
                        .text("Last update")
                    ),
                    .span(
                        .class("tag"),
                        .text(item.lastModified.literal)
                    )
                )
            )
        )
    }
}
