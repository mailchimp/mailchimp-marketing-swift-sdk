import Foundation

/// Type of discount. For free shipping set type to fixed.
public enum CreateStorePromoRuleEcommerceRequestType: String, Codable, Hashable, CaseIterable, Sendable {
    case fixed
    case percentage
}