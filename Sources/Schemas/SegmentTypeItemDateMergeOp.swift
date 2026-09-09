import Foundation

/// Whether the member's merge information is/is not, is greater/less than a value or is/is not blank.
public enum SegmentTypeItemDateMergeOp: String, Codable, Hashable, CaseIterable, Sendable {
    case `is`
    case not
    case less
    case blank
    case blankNot = "blank_not"
    case greater
}