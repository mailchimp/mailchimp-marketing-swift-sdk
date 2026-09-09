import Foundation

/// Segment match type.
public enum UpdateCampaignsRequestRecipientsSegmentOptsMatch: String, Codable, Hashable, CaseIterable, Sendable {
    case any
    case all
}