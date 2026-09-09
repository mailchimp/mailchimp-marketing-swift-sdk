import Foundation

/// Members who are/not following a linked account on a given social network.
public enum SegmentTypeItemSocialNetworkFollowOp: String, Codable, Hashable, CaseIterable, Sendable {
    case follow
    case notfollow
}