import Foundation

/// The type of delay for an automation email.
public enum UpdateEmailAutomationsRequestDelayType: String, Codable, Hashable, CaseIterable, Sendable {
    case now
    case day
    case hour
    case week
}