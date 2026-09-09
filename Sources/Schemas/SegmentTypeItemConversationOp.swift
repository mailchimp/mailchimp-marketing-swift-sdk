import Foundation

/// The status of a member's interaction with a conversation. One of the following: has replied or has not replied.
public enum SegmentTypeItemConversationOp: String, Codable, Hashable, CaseIterable, Sendable {
    case member
    case notmember
}