import Foundation

/// For A/B Split Campaigns, the group the member was apart of.
public enum SentToAbsplitGroup: String, Codable, Hashable, CaseIterable, Sendable {
    case a
    case b
    case winner
}