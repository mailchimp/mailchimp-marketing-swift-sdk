import Foundation

/// A collection of orders in a store.
public struct ListStoreOrdersEcommerceResponse: Codable, Hashable, Sendable {
    /// The store id.
    public let storeId: String?
    /// An array of objects, each representing an order in a store.
    public let orders: [ECommerceOrder]?
    /// The total number of items matching the query regardless of pagination.
    public let totalItems: Int?
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ListStoreOrdersEcommerceResponseLinksItem]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        storeId: String? = nil,
        orders: [ECommerceOrder]? = nil,
        totalItems: Int? = nil,
        links: [ListStoreOrdersEcommerceResponseLinksItem]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.storeId = storeId
        self.orders = orders
        self.totalItems = totalItems
        self.links = links
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.storeId = try container.decodeIfPresent(String.self, forKey: .storeId)
        self.orders = try container.decodeIfPresent([ECommerceOrder].self, forKey: .orders)
        self.totalItems = try container.decodeIfPresent(Int.self, forKey: .totalItems)
        self.links = try container.decodeIfPresent([ListStoreOrdersEcommerceResponseLinksItem].self, forKey: .links)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.storeId, forKey: .storeId)
        try container.encodeIfPresent(self.orders, forKey: .orders)
        try container.encodeIfPresent(self.totalItems, forKey: .totalItems)
        try container.encodeIfPresent(self.links, forKey: .links)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case storeId = "store_id"
        case orders
        case totalItems = "total_items"
        case links = "_links"
    }
}