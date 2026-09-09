import Foundation

/// A collection of a cart's line items.
public struct ListStoreCartLinesEcommerceResponse: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ListStoreCartLinesEcommerceResponseLinksItem]?
    /// The cart id.
    public let cartId: String?
    /// An array of objects, each representing a cart's line item.
    public let lines: [ECommerceCartLineItem]?
    /// The store id.
    public let storeId: String?
    /// The total number of items matching the query regardless of pagination.
    public let totalItems: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [ListStoreCartLinesEcommerceResponseLinksItem]? = nil,
        cartId: String? = nil,
        lines: [ECommerceCartLineItem]? = nil,
        storeId: String? = nil,
        totalItems: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.cartId = cartId
        self.lines = lines
        self.storeId = storeId
        self.totalItems = totalItems
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([ListStoreCartLinesEcommerceResponseLinksItem].self, forKey: .links)
        self.cartId = try container.decodeIfPresent(String.self, forKey: .cartId)
        self.lines = try container.decodeIfPresent([ECommerceCartLineItem].self, forKey: .lines)
        self.storeId = try container.decodeIfPresent(String.self, forKey: .storeId)
        self.totalItems = try container.decodeIfPresent(Int.self, forKey: .totalItems)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.cartId, forKey: .cartId)
        try container.encodeIfPresent(self.lines, forKey: .lines)
        try container.encodeIfPresent(self.storeId, forKey: .storeId)
        try container.encodeIfPresent(self.totalItems, forKey: .totalItems)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case cartId = "cart_id"
        case lines
        case storeId = "store_id"
        case totalItems = "total_items"
    }
}