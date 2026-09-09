import Foundation

/// The day of the week to send a weekly RSS Campaign.
public enum CampaignRssOptsScheduleWeeklySendDay: String, Codable, Hashable, CaseIterable, Sendable {
    case sunday
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
}