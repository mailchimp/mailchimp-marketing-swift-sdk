import Foundation

public enum AudiencesContactSmsChannelEffectiveSubscriptionStatusValue: String, Codable, Hashable, CaseIterable, Sendable {
    case subscribed
    case unsubscribed
    case nonsubscribed
    case pending
}