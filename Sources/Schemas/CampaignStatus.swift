import Foundation

/// The current status of the campaign.
public enum CampaignStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case save
    case paused
    case schedule
    case sending
    case sent
    case canceled
    case canceling
    case archived
}