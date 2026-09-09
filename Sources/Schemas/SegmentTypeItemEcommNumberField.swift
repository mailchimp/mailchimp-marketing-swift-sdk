import Foundation

/// Segment by average spent total, number of orders, total number of products purchased, or average number of products per order.
public enum SegmentTypeItemEcommNumberField: String, Codable, Hashable, CaseIterable, Sendable {
    case ecommSpentAvg = "ecomm_spent_avg"
    case ecommOrders = "ecomm_orders"
    case ecommProdAll = "ecomm_prod_all"
    case ecommAvgOrd = "ecomm_avg_ord"
}