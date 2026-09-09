import Foundation

/// List or Facebook based audience
public enum ReportingFacebookAdAudienceSourceType: String, Codable, Hashable, CaseIterable, Sendable {
    case facebook
    case list
}