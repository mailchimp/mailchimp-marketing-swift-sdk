import Foundation

/// A collection of a store's products.
public struct ListStoreProductsEcommerceResponse: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ListStoreProductsEcommerceResponseLinksItem]?
    /// An array of objects, each representing a store product.
    public let products: [ECommerceProduct]?
    /// The store id.
    public let storeId: String?
    /// The total number of items matching the query regardless of pagination.
    public let totalItems: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [ListStoreProductsEcommerceResponseLinksItem]? = nil,
        products: [ECommerceProduct]? = nil,
        storeId: String? = nil,
        totalItems: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.products = products
        self.storeId = storeId
        self.totalItems = totalItems
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([ListStoreProductsEcommerceResponseLinksItem].self, forKey: .links)
        self.products = try container.decodeIfPresent([ECommerceProduct].self, forKey: .products)
        self.storeId = try container.decodeIfPresent(String.self, forKey: .storeId)
        self.totalItems = try container.decodeIfPresent(Int.self, forKey: .totalItems)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.products, forKey: .products)
        try container.encodeIfPresent(self.storeId, forKey: .storeId)
        try container.encodeIfPresent(self.totalItems, forKey: .totalItems)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case products
        case storeId = "store_id"
        case totalItems = "total_items"
    }
}