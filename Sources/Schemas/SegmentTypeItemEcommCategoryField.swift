import Foundation

/// Segment by purchases in specific items or categories.
public enum SegmentTypeItemEcommCategoryField: String, Codable, Hashable, CaseIterable, Sendable {
    case ecommCat = "ecomm_cat"
    case ecommProd = "ecomm_prod"
}