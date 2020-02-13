import Publish
import Plot

extension Node where Context: HTML.BodyContext {
    
    static func smallTags(item: Item<AlvarezTech>, on site: AlvarezTech) -> Node {
        return .div(
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
}
