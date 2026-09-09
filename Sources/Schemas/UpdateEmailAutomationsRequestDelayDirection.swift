import Foundation

/// Whether the delay settings describe before or after the delay action of an automation email.
public enum UpdateEmailAutomationsRequestDelayDirection: String, Codable, Hashable, CaseIterable, Sendable {
    case after
}