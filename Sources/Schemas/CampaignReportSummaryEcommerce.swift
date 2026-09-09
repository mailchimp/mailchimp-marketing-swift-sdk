import Foundation

/// E-Commerce stats for a campaign.
public struct CampaignReportSummaryEcommerce: Codable, Hashable, Sendable {
    /// The total orders for a campaign.
    public let totalOrders: Int?
    /// The total revenue for a campaign. Calculated as the sum of all order totals minus shipping and tax totals.
    public let totalRevenue: Double?
    /// The total spent for a campaign. Calculated as the sum of all order totals with no deductions.
    public let totalSpent: Double?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        totalOrders: Int? = nil,
        totalRevenue: Double? = nil,
        totalSpent: Double? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.totalOrders = totalOrders
        self.totalRevenue = totalRevenue
        self.totalSpent = totalSpent
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.totalOrders = try container.decodeIfPresent(Int.self, forKey: .totalOrders)
        self.totalRevenue = try container.decodeIfPresent(Double.self, forKey: .totalRevenue)
        self.totalSpent = try container.decodeIfPresent(Double.self, forKey: .totalSpent)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.totalOrders, forKey: .totalOrders)
        try container.encodeIfPresent(self.totalRevenue, forKey: .totalRevenue)
        try container.encodeIfPresent(self.totalSpent, forKey: .totalSpent)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case totalOrders = "total_orders"
        case totalRevenue = "total_revenue"
        case totalSpent = "total_spent"
    }
}