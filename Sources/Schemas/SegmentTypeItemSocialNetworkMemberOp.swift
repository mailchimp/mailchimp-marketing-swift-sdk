import Foundation

/// Members who are/not on a given social network.
public enum SegmentTypeItemSocialNetworkMemberOp: String, Codable, Hashable, CaseIterable, Sendable {
    case member
    case notmember
}