import Foundation

/// Whether the member's merge information is/is not a value or is/is not blank.
public enum SegmentTypeItemSelectMergeOp: String, Codable, Hashable, CaseIterable, Sendable {
    case `is`
    case not
    case blank
    case blankNot = "blank_not"
    case notcontain
    case contains
}