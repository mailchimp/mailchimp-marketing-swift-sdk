import Foundation

/// Status of the abandonedBrowse automation.
public enum ECommerceStoreAutomationsAbandonedBrowseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case save
    case sending
    case paused
}