import Foundation

public enum ListEcommerceProductActivityReportsRequestSortField: String, Codable, Hashable, CaseIterable, Sendable {
    case title
    case totalRevenue = "total_revenue"
    case totalPurchased = "total_purchased"
}