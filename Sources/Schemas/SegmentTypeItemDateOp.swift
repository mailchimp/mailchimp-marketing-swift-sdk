import Foundation

/// When the event took place:  Before, after, is a specific date, is not a specific date, is blank, or is not blank.
public enum SegmentTypeItemDateOp: String, Codable, Hashable, CaseIterable, Sendable {
    case greater
    case less
    case `is`
    case not
    case blank
    case blankNot = "blank_not"
    case within
    case notwithin
}