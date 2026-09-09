import Foundation

/// Members who are/are not apart of a 'similar subscribers' segment.
public enum SegmentTypeItemFuzzySegmentOp: String, Codable, Hashable, CaseIterable, Sendable {
    case fuzzyIs = "fuzzy_is"
    case fuzzyNot = "fuzzy_not"
}