import Foundation

/// The frequency of the RSS Campaign.
public enum UpdateCampaignsRequestRssOptsFrequency: String, Codable, Hashable, CaseIterable, Sendable {
    case daily
    case weekly
    case monthly
}