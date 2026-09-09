import Foundation

/// The sentiment type for a feedback message.
public enum ListAdviceReportsResponseAdviceItemType: String, Codable, Hashable, CaseIterable, Sendable {
    case negative
    case positive
    case neutral
}