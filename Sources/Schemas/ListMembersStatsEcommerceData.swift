import Foundation

/// Ecommerce stats for the list member if the list is attached to a store.
public struct ListMembersStatsEcommerceData: Codable, Hashable, Sendable {
    /// The three-letter ISO 4217 code for the currency that the store accepts.
    public let currencyCode: String?
    /// The total number of orders placed by the list member.
    public let numberOfOrders: Double?
    /// The total revenue the list member has brought in.
    public let totalRevenue: Double?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        currencyCode: String? = nil,
        numberOfOrders: Double? = nil,
        totalRevenue: Double? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.currencyCode = currencyCode
        self.numberOfOrders = numberOfOrders
        self.totalRevenue = totalRevenue
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.currencyCode = try container.decodeIfPresent(String.self, forKey: .currencyCode)
        self.numberOfOrders = try container.decodeIfPresent(Double.self, forKey: .numberOfOrders)
        self.totalRevenue = try container.decodeIfPresent(Double.self, forKey: .totalRevenue)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.currencyCode, forKey: .currencyCode)
        try container.encodeIfPresent(self.numberOfOrders, forKey: .numberOfOrders)
        try container.encodeIfPresent(self.totalRevenue, forKey: .totalRevenue)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case currencyCode = "currency_code"
        case numberOfOrders = "number_of_orders"
        case totalRevenue = "total_revenue"
    }
}