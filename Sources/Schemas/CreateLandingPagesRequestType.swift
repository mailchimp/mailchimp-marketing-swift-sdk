import Foundation

/// The type of template the landing page has.
public enum CreateLandingPagesRequestType: String, Codable, Hashable, CaseIterable, Sendable {
    case signup
    case product
}