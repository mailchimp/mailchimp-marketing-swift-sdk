import Foundation

/// Whether the member's merge information is/is not, contains/does not contain, starts/ends with, or is greater/less than a value
public enum SegmentTypeItemTextMergeOp: String, Codable, Hashable, CaseIterable, Sendable {
    case `is`
    case not
    case contains
    case notcontain
    case starts
    case ends
    case greater
    case less
    case blank
    case blankNot = "blank_not"
}