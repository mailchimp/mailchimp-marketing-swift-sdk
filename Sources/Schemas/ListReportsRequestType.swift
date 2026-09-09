import Foundation

public enum ListReportsRequestType: String, Codable, Hashable, CaseIterable, Sendable {
    case regular
    case plaintext
    case absplit
    case rss
    case variate
}