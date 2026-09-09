import Foundation

/// Segment by whether someone has purchased anything.
public enum SegmentTypeItemEcommPurchasedField: String, Codable, Hashable, CaseIterable, Sendable {
    case ecommPurchased = "ecomm_purchased"
}