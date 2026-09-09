import Foundation

/// Segment match type.
public enum CampaignsRecipientsSegmentOptsMatch: String, Codable, Hashable, CaseIterable, Sendable {
    case any
    case all
}