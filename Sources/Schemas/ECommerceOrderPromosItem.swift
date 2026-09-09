import Foundation

public struct ECommerceOrderPromosItem: Codable, Hashable, Sendable {
    /// The amount of discount applied on the total price. For example if the total cost was $100 and the customer paid $95.5, amount_discounted will be 4.5 For free shipping set amount_discounted to 0
    public let amountDiscounted: Double?
    /// The Promo Code
    public let code: String?
    /// Type of discount. For free shipping set type to fixed
    public let type: ECommerceOrderPromosItemType?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        amountDiscounted: Double? = nil,
        code: String? = nil,
        type: ECommerceOrderPromosItemType? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.amountDiscounted = amountDiscounted
        self.code = code
        self.type = type
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.amountDiscounted = try container.decodeIfPresent(Double.self, forKey: .amountDiscounted)
        self.code = try container.decodeIfPresent(String.self, forKey: .code)
        self.type = try container.decodeIfPresent(ECommerceOrderPromosItemType.self, forKey: .type)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.amountDiscounted, forKey: .amountDiscounted)
        try container.encodeIfPresent(self.code, forKey: .code)
        try container.encodeIfPresent(self.type, forKey: .type)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case amountDiscounted = "amount_discounted"
        case code
        case type
    }
}