import Foundation

/// The type of segment. Static segments are now known as tags. Learn more about [tags](https://mailchimp.com/help/getting-started-tags?utm_source=mc-api&utm_medium=docs&utm_campaign=apidocs).
public enum ListType: String, Codable, Hashable, CaseIterable, Sendable {
    case saved
    case `static`
    case fuzzy
}