import Publish
import Plot

struct Algo {
    
}

extension Node where Context: HTML.BodyContext {
    
    static func bigTitle(_ title: String, subtitle: String? = nil) -> Node {
        return .section(
            .class("hero is-primary"),
            .div(
                .class("hero-body"),
                .div(
                    .class("container"),
                    .h1(
                        .class("title"),
                        .text(title)
                    ),
                    .unwrap(subtitle) {
                        .h2(
                            .class("subtitle"),
                            .text($0)
                        )
                    }
                )
            )
        )
    }
}
