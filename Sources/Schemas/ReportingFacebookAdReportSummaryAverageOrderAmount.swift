import Foundation

public struct ReportingFacebookAdReportSummaryAverageOrderAmount: Codable, Hashable, Sendable {
    public let amount: Double?
    public let currencyCode: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        amount: Double? = nil,
        currencyCode: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.amount = amount
        self.currencyCode = currencyCode
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.amount = try container.decodeIfPresent(Double.self, forKey: .amount)
        self.currencyCode = try container.decodeIfPresent(String.self, forKey: .currencyCode)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.amount, forKey: .amount)
        try container.encodeIfPresent(self.currencyCode, forKey: .currencyCode)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case amount
        case currencyCode = "currency_code"
    }
}