import Publish
import Plot

extension Node where Context: HTML.BodyContext {

    static func header(for context: PublishingContext<AlvarezTech>, selectedSection: AlvarezTech.SectionID?) -> Node {
        let sectionIDs = AlvarezTech.SectionID.allCases

        return .header(
            .nav(
                .class("navbar"),
                .div(
                    .class("container"),
                    .div(
                        .class("navbar-brand"),
                        .a(
                            .class("navbar-item"),
                            .href("/"),
                            .img(
                                .src("/images/favicon.png")
                            )
                        ),
                        .div(
                            .class("navbar-burger burger"),
                            .attribute(named: "data-target", value: "hamburger"),
                            .span(),
                            .span(),
                            .span()
                        )
                    ),
                    .div(
                        .id("hamburger"),
                        .class("navbar-menu"),
                        .div(
                            .class("navbar-start"),
                            .forEach(sectionIDs) { section in
                                .a(
                                    .class("navbar-item"),
                                    .href(context.sections[section].path),
                                    .text(context.sections[section].title)
                                )
                            }
                        ),
                        .div(
                            .class("navbar-end"),
                            .div(
                                .class("navbar-item"),
                                .div(
                                    .class("field is-grouped"),
                                    .p(
                                        .class("control"),
                                        .a(
                                            .class("button is-primary is-light"),
                                            .text("Twitter"),
                                            .href("https://twitter.com/alvarez_tech"),
                                            .target(.blank)
                                        )
                                    ),
                                    .p(
                                        .class("control"),
                                        .a(
                                            .class("button is-primary"),
                                            .text("YouTube"),
                                            .href("https://www.youtube.com/alvareztech"),
                                            .target(.blank)
                                        )
                                    )
                                )
                            )
                        )
                    )
                )
            )
        )
    }
}
