import Foundation
import Publish
import Plot

extension Date {
    
    var literal: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMM dd, yyyy"
        return formatter.string(from: self)
    }
}

extension Tag {
    
    var iconPath: String {
        if self.string.contains("google") {
            return "/icons/google.jpg"
        }
        switch self.string {
        case "algorithm", "ignite", "api", "codelab", "owasp":
            return "/icons/code.jpg"
        case "apple", "ios", "macos":
            return "/icons/apple.jpg"
        default:
            return "/icons/\(self.string.replacingOccurrences(of: " ", with: "-").lowercased()).jpg"
        }
    }
}

public extension Node where Context == HTML.DocumentContext {

    static func websiteHead<T: Website>(
        for location: Location,
        on site: T,
        titleSeparator: String = " | ",
        stylesheetPaths: [Path] = ["/styles.css"],
        rssFeedPath: Path? = .defaultForRSSFeed,
        rssFeedTitle: String? = nil
    ) -> Node {
        var title = location.title

        if title.isEmpty {
            title = site.name
        } else {
            title.append(titleSeparator + site.name)
        }

        var description = location.description

        if description.isEmpty {
            description = site.description
        }

        return .head(
            .encoding(.utf8),
            .siteName(site.name),
            .url(site.url(for: location)),
            .title(title),
            .description(description),
            .twitterCardType(location.imagePath == nil ? .summary : .summaryLargeImage),
            .forEach(stylesheetPaths, { .stylesheet($0) }),
            .viewport(.accordingToDevice),
            .unwrap(site.favicon, { .favicon($0) }),
            .unwrap(rssFeedPath, { path in
                let title = rssFeedTitle ?? "Subscribe to \(site.name)"
                return .rssFeedLink(path.absoluteString, title: title)
            }),
            .unwrap(location.imagePath ?? site.imagePath, { path in
                let url = site.url(for: path)
                return .socialImageLink(url)
            }),
            .meta(
                .attribute(named: "property", value: "fb:pages"),
                .attribute(named: "content", value: "348472941969173")
            )
        )
    }
}
