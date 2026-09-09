import Foundation

/// List or Facebook based audience
public enum FacebookAdsAudienceSourceType: String, Codable, Hashable, CaseIterable, Sendable {
    case facebook
    case list
}