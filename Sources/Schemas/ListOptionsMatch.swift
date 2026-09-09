import Foundation

/// Match type.
public enum ListOptionsMatch: String, Codable, Hashable, CaseIterable, Sendable {
    case any
    case all
}