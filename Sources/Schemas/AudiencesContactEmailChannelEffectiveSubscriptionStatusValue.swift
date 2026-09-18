import Foundation

public enum AudiencesContactEmailChannelEffectiveSubscriptionStatusValue: String, Codable, Hashable, CaseIterable, Sendable {
    case subscribed
    case unsubscribed
    case nonsubscribed
    case pending
}