import Foundation

/// The age range to segment.
public enum SegmentTypeItemSocialAgeValue: String, Codable, Hashable, CaseIterable, Sendable {
    case eighteen24 = "18-24"
    case twentyFive34 = "25-34"
    case thirtyFive54 = "35-54"
    case fiftyFive = "55+"
}