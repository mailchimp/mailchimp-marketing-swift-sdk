import Foundation

/// A collection of the store's promo rules.
public struct ListStorePromoRulesEcommerceResponse: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ListStorePromoRulesEcommerceResponseLinksItem]?
    /// An array of objects, each representing promo rules defined for a store.
    public let promoRules: [ECommercePromoRule]?
    /// The store id.
    public let storeId: String?
    /// The total number of items matching the query regardless of pagination.
    public let totalItems: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [ListStorePromoRulesEcommerceResponseLinksItem]? = nil,
        promoRules: [ECommercePromoRule]? = nil,
        storeId: String? = nil,
        totalItems: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.promoRules = promoRules
        self.storeId = storeId
        self.totalItems = totalItems
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([ListStorePromoRulesEcommerceResponseLinksItem].self, forKey: .links)
        self.promoRules = try container.decodeIfPresent([ECommercePromoRule].self, forKey: .promoRules)
        self.storeId = try container.decodeIfPresent(String.self, forKey: .storeId)
        self.totalItems = try container.decodeIfPresent(Int.self, forKey: .totalItems)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.promoRules, forKey: .promoRules)
        try container.encodeIfPresent(self.storeId, forKey: .storeId)
        try container.encodeIfPresent(self.totalItems, forKey: .totalItems)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case promoRules = "promo_rules"
        case storeId = "store_id"
        case totalItems = "total_items"
    }
}