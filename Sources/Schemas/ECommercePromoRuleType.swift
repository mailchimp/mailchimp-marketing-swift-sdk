import Foundation

/// Type of discount. For free shipping set type to fixed.
public enum ECommercePromoRuleType: String, Codable, Hashable, CaseIterable, Sendable {
    case fixed
    case percentage
}