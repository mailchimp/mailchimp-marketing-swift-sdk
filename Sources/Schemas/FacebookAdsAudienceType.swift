import Foundation

/// Type of the audience
public enum FacebookAdsAudienceType: String, Codable, Hashable, CaseIterable, Sendable {
    case customAudience = "Custom Audience"
    case lookalikeAudience = "Lookalike Audience"
    case interestBasedAudience = "Interest-based Audience"
}