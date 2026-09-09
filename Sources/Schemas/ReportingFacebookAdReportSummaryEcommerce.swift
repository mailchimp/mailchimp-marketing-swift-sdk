import Foundation

public struct ReportingFacebookAdReportSummaryEcommerce: Codable, Hashable, Sendable {
    public let currencyCode: String?
    public let totalRevenue: Double?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        currencyCode: String? = nil,
        totalRevenue: Double? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.currencyCode = currencyCode
        self.totalRevenue = totalRevenue
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.currencyCode = try container.decodeIfPresent(String.self, forKey: .currencyCode)
        self.totalRevenue = try container.decodeIfPresent(Double.self, forKey: .totalRevenue)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.currencyCode, forKey: .currencyCode)
        try container.encodeIfPresent(self.totalRevenue, forKey: .totalRevenue)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case currencyCode = "currency_code"
        case totalRevenue = "total_revenue"
    }
}