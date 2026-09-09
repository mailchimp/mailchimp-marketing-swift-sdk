import Foundation

/// The status of this landing page.
public enum LandingPageStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case published
    case unpublished
    case draft
}