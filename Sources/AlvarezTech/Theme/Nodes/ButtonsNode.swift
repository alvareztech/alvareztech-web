import Publish
import Plot

extension Node where Context: HTML.BodyContext {
    
    static func messageTwitterButton(for site: AlvarezTech) -> Node {
        .div(
            .a(
                .class("twitter-dm-button"),
                .href("https://twitter.com/messages/compose?recipient_id=233763623&ref_src=twsrc%5Etfw"),
                .data(named: "size", value: "large"),
                .data(named: "screen-name", value: "@alvarez_tech"),
                .data(named: "show-count", value: "false"),
                .text("Message @alvarez_tech")
            ),
            .script(
                .src("https://platform.twitter.com/widgets.js"),
                .async(),
                .attribute(named: "charset", value: "utf-8")
            )
        )
    }
}
