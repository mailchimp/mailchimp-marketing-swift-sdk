import Foundation

/// Match type.
public enum CreateSegmentListsRequestOptionsMatch: String, Codable, Hashable, CaseIterable, Sendable {
    case any
    case all
}