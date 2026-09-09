import Foundation

/// Members who have or have not purchased from a specific store.
public enum SegmentTypeItemEcommStoreOp: String, Codable, Hashable, CaseIterable, Sendable {
    case `is`
    case not
}