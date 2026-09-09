import Foundation

/// Segment by similar subscribers.
public enum SegmentTypeItemFuzzySegmentField: String, Codable, Hashable, CaseIterable, Sendable {
    case fuzzySegment = "fuzzy_segment"
}