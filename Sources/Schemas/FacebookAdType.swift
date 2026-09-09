import Foundation

/// The type of outreach this object is.
public enum FacebookAdType: String, Codable, Hashable, CaseIterable, Sendable {
    case regular
    case emailTouchpoint = "email-touchpoint"
    case plaintext
    case rss
    case reconfirm
    case variate
    case absplit
    case automation
    case facebook
    case google
    case autoresponder
    case transactional
    case page
    case website
    case socialPost = "social_post"
    case survey
    case customerJourney = "customer_journey"
    case sms
}