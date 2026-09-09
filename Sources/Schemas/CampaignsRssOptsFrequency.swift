import Foundation

/// The frequency of the RSS Campaign.
public enum CampaignsRssOptsFrequency: String, Codable, Hashable, CaseIterable, Sendable {
    case daily
    case weekly
    case monthly
}