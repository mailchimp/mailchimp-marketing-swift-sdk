import Foundation

/// The status of the email delivered to this subscriber. `hard` and `soft` refer to different [bounce types](https://mailchimp.com/help/soft-vs-hard-bounces/).
public enum SentToStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case sent
    case hard
    case soft
}