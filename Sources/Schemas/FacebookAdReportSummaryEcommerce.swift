import Foundation

public struct FacebookAdReportSummaryEcommerce: Codable, Hashable, Sendable {
    public let averageOrderRevenue: Double?
    public let currencyCode: String?
    public let totalRevenue: Double?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        averageOrderRevenue: Double? = nil,
        currencyCode: String? = nil,
        totalRevenue: Double? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.averageOrderRevenue = averageOrderRevenue
        self.currencyCode = currencyCode
        self.totalRevenue = totalRevenue
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.averageOrderRevenue = try container.decodeIfPresent(Double.self, forKey: .averageOrderRevenue)
        self.currencyCode = try container.decodeIfPresent(String.self, forKey: .currencyCode)
        self.totalRevenue = try container.decodeIfPresent(Double.self, forKey: .totalRevenue)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.averageOrderRevenue, forKey: .averageOrderRevenue)
        try container.encodeIfPresent(self.currencyCode, forKey: .currencyCode)
        try container.encodeIfPresent(self.totalRevenue, forKey: .totalRevenue)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case averageOrderRevenue = "average_order_revenue"
        case currencyCode = "currency_code"
        case totalRevenue = "total_revenue"
    }
}