import Foundation

/// Segment match type.
public enum CreateCampaignsRequestRecipientsSegmentOptsMatch: String, Codable, Hashable, CaseIterable, Sendable {
    case any
    case all
}