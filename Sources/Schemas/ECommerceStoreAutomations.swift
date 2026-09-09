import Foundation

/// Details for the automations attached to this store.
public struct ECommerceStoreAutomations: Codable, Hashable, Sendable {
    /// abandonedBrowse automation details. abandonedBrowse is also known as Product Retargeting Email or Retarget Site Visitors on the web.
    public let abandonedBrowse: ECommerceStoreAutomationsAbandonedBrowse?
    /// abandonedCart automation details.
    public let abandonedCart: ECommerceStoreAutomationsAbandonedCart?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        abandonedBrowse: ECommerceStoreAutomationsAbandonedBrowse? = nil,
        abandonedCart: ECommerceStoreAutomationsAbandonedCart? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.abandonedBrowse = abandonedBrowse
        self.abandonedCart = abandonedCart
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.abandonedBrowse = try container.decodeIfPresent(ECommerceStoreAutomationsAbandonedBrowse.self, forKey: .abandonedBrowse)
        self.abandonedCart = try container.decodeIfPresent(ECommerceStoreAutomationsAbandonedCart.self, forKey: .abandonedCart)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.abandonedBrowse, forKey: .abandonedBrowse)
        try container.encodeIfPresent(self.abandonedCart, forKey: .abandonedCart)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case abandonedBrowse = "abandoned_browse"
        case abandonedCart = "abandoned_cart"
    }
}