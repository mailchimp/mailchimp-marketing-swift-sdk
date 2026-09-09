import Foundation

/// Segment match type.
public enum CampaignRecipientsSegmentOptsMatch: String, Codable, Hashable, CaseIterable, Sendable {
    case any
    case all
}