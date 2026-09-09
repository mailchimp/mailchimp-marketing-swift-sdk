import Foundation

public struct CreateStoreOrderEcommerceRequestPromosItem: Codable, Hashable, Sendable {
    public let amountDiscounted: CreateStoreOrderEcommerceRequestPromosItemAmountDiscounted
    /// The Promo Code
    public let code: String
    /// Type of discount. For free shipping set type to fixed
    public let type: CreateStoreOrderEcommerceRequestPromosItemType
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        amountDiscounted: CreateStoreOrderEcommerceRequestPromosItemAmountDiscounted,
        code: String,
        type: CreateStoreOrderEcommerceRequestPromosItemType,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.amountDiscounted = amountDiscounted
        self.code = code
        self.type = type
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.amountDiscounted = try container.decode(CreateStoreOrderEcommerceRequestPromosItemAmountDiscounted.self, forKey: .amountDiscounted)
        self.code = try container.decode(String.self, forKey: .code)
        self.type = try container.decode(CreateStoreOrderEcommerceRequestPromosItemType.self, forKey: .type)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.amountDiscounted, forKey: .amountDiscounted)
        try container.encode(self.code, forKey: .code)
        try container.encode(self.type, forKey: .type)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case amountDiscounted = "amount_discounted"
        case code
        case type
    }
}