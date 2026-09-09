import Foundation

/// Members have/have not interacted with a specific poll in a Mailchimp email.
public enum SegmentTypeItemCampaignPollOp: String, Codable, Hashable, CaseIterable, Sendable {
    case member
    case notmember
}