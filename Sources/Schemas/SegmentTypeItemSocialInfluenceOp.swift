import Foundation

/// Members who have a rating that is/not or greater/less than the rating provided.
public enum SegmentTypeItemSocialInfluenceOp: String, Codable, Hashable, CaseIterable, Sendable {
    case `is`
    case not
    case greater
    case less
}