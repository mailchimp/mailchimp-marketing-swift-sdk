import Foundation

/// Members who have have a rating that is/not exactly a given number or members who have a rating greater/less than a given number.
public enum SegmentTypeItemMemberRatingOp: String, Codable, Hashable, CaseIterable, Sendable {
    case `is`
    case not
    case greater
    case less
}