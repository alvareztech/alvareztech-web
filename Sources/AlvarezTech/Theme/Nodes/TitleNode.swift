import Publish
import Plot

extension Node where Context: HTML.BodyContext {
    
    static func bigTitle(_ title: String, subtitle: String? = nil) -> Node {
        .div(
            .class("outer site-header-background no-image"),
            .div(
                .class("inner site-header-content"),
                .h1(
                    .class("site-title"),
                    .text(title)
                ),
                .unwrap(subtitle) {
                    .h2(
                        .class("site-description"),
                        .text($0)
                    )
                }
            )
        )
    }
}
