import Foundation

public enum ListCampaignsRequestStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case save
    case paused
    case schedule
    case sending
    case sent
}