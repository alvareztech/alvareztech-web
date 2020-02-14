import Publish
import Plot

extension Node where Context: HTML.BodyContext {
    
    static func items(for items: [Item<AlvarezTech>], on site: AlvarezTech) -> Node {
        .section(
            .class("section"),
            .div(
                .class("container"),
                .div(
                    .class("columns is-multiline"),
                    .forEach(items) { item in
                        .div(
                            .class("column is-one-quarter"),
                            .div(
                                .class("content"),
                                .h2(
                                    .a(
                                        .href(item.path),
                                        .text(item.title)
                                    )
                                ),
                                .p(.text(item.description)),
                                .smallTags(item: item, on: site)
                            )
                        )
                    }
                )
            )
        )
    }
}
