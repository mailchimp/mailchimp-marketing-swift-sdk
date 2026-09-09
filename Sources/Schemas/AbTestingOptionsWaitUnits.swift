import Foundation

/// How unit of time for measuring the winner ('hours' or 'days'). This cannot be changed after a campaign is sent.
public enum AbTestingOptionsWaitUnits: String, Codable, Hashable, CaseIterable, Sendable {
    case hours
    case days
}