import Foundation

/// The type of pricing plan the account is on.
public enum ListRootResponsePricingPlanType: String, Codable, Hashable, CaseIterable, Sendable {
    case monthly
    case payAsYouGo = "pay_as_you_go"
    case foreverFree = "forever_free"
}