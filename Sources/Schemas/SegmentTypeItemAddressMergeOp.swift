import Foundation

/// Whether the member's address merge field contains/does not contain a value or is/is not blank.
public enum SegmentTypeItemAddressMergeOp: String, Codable, Hashable, CaseIterable, Sendable {
    case contains
    case notcontain
    case blank
    case blankNot = "blank_not"
}