import Foundation

/// Whether the member is a part of one, all, or none of the groups.
public enum SegmentTypeItemInterestsOp: String, Codable, Hashable, CaseIterable, Sendable {
    case interestcontains
    case interestcontainsall
    case interestnotcontains
}