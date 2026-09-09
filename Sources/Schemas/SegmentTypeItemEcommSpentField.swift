import Foundation

/// Segment by amount spent on a single order or across all orders.
public enum SegmentTypeItemEcommSpentField: String, Codable, Hashable, CaseIterable, Sendable {
    case ecommSpentOne = "ecomm_spent_one"
    case ecommSpentAll = "ecomm_spent_all"
}