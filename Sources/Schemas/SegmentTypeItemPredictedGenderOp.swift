import Foundation

/// Members who are/not the exact criteria listed.
public enum SegmentTypeItemPredictedGenderOp: String, Codable, Hashable, CaseIterable, Sendable {
    case `is`
    case not
}