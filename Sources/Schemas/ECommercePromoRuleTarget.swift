import Foundation

/// The target that the discount applies to.
public enum ECommercePromoRuleTarget: String, Codable, Hashable, CaseIterable, Sendable {
    case perItem = "per_item"
    case total
    case shipping
}