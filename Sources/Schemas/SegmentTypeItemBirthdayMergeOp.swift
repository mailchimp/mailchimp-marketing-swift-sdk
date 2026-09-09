import Foundation

/// Whether the member's birthday merge information is/is not a certain date or is/is not blank.
public enum SegmentTypeItemBirthdayMergeOp: String, Codable, Hashable, CaseIterable, Sendable {
    case `is`
    case not
    case blank
    case blankNot = "blank_not"
}