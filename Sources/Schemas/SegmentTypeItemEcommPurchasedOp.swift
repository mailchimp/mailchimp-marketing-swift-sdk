import Foundation

/// Members who have have ('member') or have not ('notmember') purchased.
public enum SegmentTypeItemEcommPurchasedOp: String, Codable, Hashable, CaseIterable, Sendable {
    case member
    case notmember
}