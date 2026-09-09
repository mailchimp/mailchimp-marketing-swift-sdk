import Foundation

public struct LandingPageReportEcommerce: Codable, Hashable, Sendable {
    /// The average order revenue of this landing page.
    public let averageOrderRevenue: Double?
    /// The user's currency code.
    public let currencyCode: String?
    /// The total number of orders associated with this landing page.
    public let totalOrders: Int?
    /// The total revenue of this landing page.
    public let totalRevenue: Double?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        averageOrderRevenue: Double? = nil,
        currencyCode: String? = nil,
        totalOrders: Int? = nil,
        totalRevenue: Double? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.averageOrderRevenue = averageOrderRevenue
        self.currencyCode = currencyCode
        self.totalOrders = totalOrders
        self.totalRevenue = totalRevenue
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.averageOrderRevenue = try container.decodeIfPresent(Double.self, forKey: .averageOrderRevenue)
        self.currencyCode = try container.decodeIfPresent(String.self, forKey: .currencyCode)
        self.totalOrders = try container.decodeIfPresent(Int.self, forKey: .totalOrders)
        self.totalRevenue = try container.decodeIfPresent(Double.self, forKey: .totalRevenue)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.averageOrderRevenue, forKey: .averageOrderRevenue)
        try container.encodeIfPresent(self.currencyCode, forKey: .currencyCode)
        try container.encodeIfPresent(self.totalOrders, forKey: .totalOrders)
        try container.encodeIfPresent(self.totalRevenue, forKey: .totalRevenue)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case averageOrderRevenue = "average_order_revenue"
        case currencyCode = "currency_code"
        case totalOrders = "total_orders"
        case totalRevenue = "total_revenue"
    }
}