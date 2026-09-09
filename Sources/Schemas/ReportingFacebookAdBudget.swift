import Foundation

public struct ReportingFacebookAdBudget: Codable, Hashable, Sendable {
    /// Currency code
    public let currencyCode: String?
    /// Duration of the ad in seconds
    public let duration: Int?
    /// Total budget of the ad
    public let totalAmount: Double?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        currencyCode: String? = nil,
        duration: Int? = nil,
        totalAmount: Double? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.currencyCode = currencyCode
        self.duration = duration
        self.totalAmount = totalAmount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.currencyCode = try container.decodeIfPresent(String.self, forKey: .currencyCode)
        self.duration = try container.decodeIfPresent(Int.self, forKey: .duration)
        self.totalAmount = try container.decodeIfPresent(Double.self, forKey: .totalAmount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.currencyCode, forKey: .currencyCode)
        try container.encodeIfPresent(self.duration, forKey: .duration)
        try container.encodeIfPresent(self.totalAmount, forKey: .totalAmount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case currencyCode = "currency_code"
        case duration
        case totalAmount = "total_amount"
    }
}