import Publish
import Plot

extension PublishingStep where Site == AlvarezTech {
    
    static func addImageThings() -> Self {
        // TODO: Complete image loading improvements
        return .mutateAllItems { (item) in
            var html = item.body.html
            html = html.replacingOccurrences(of: "<img width=\"500\" src=", with: "<img src=")
            item.body = Content.Body(html: html)
        }
    }
}
