import Foundation

public enum ListCampaignsRequestType: String, Codable, Hashable, CaseIterable, Sendable {
    case regular
    case plaintext
    case absplit
    case rss
    case variate
}