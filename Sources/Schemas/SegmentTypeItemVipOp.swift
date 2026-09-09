import Foundation

/// Whether the member is or is not marked as VIP.
public enum SegmentTypeItemVipOp: String, Codable, Hashable, CaseIterable, Sendable {
    case member
    case notmember
}