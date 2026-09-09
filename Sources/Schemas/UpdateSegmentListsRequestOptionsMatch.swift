import Foundation

/// Match type.
public enum UpdateSegmentListsRequestOptionsMatch: String, Codable, Hashable, CaseIterable, Sendable {
    case any
    case all
}