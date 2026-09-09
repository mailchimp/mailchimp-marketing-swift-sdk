import Foundation

/// Segment match type.
public enum FacebookAdRecipientsSegmentOptsMatch: String, Codable, Hashable, CaseIterable, Sendable {
    case any
    case all
}