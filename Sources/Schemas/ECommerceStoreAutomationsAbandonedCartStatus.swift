import Foundation

/// Status of the abandonedCart automation.
public enum ECommerceStoreAutomationsAbandonedCartStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case save
    case sending
    case paused
}