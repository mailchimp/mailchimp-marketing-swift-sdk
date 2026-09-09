import Foundation

/// How we should evaluate a winner. Based on 'opens', 'clicks', or 'manual'.
public enum AbTestingOptionsPickWinner: String, Codable, Hashable, CaseIterable, Sendable {
    case opens
    case clicks
    case manual
}