import Foundation

/// A collection of the store's customers.
public struct ListStoreCustomersEcommerceResponse: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ListStoreCustomersEcommerceResponseLinksItem]?
    /// An array of objects, each representing a customer of a store.
    public let customers: [ECommerceCustomer]?
    /// The store id.
    public let storeId: String?
    /// The total number of items matching the query regardless of pagination.
    public let totalItems: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [ListStoreCustomersEcommerceResponseLinksItem]? = nil,
        customers: [ECommerceCustomer]? = nil,
        storeId: String? = nil,
        totalItems: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.customers = customers
        self.storeId = storeId
        self.totalItems = totalItems
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([ListStoreCustomersEcommerceResponseLinksItem].self, forKey: .links)
        self.customers = try container.decodeIfPresent([ECommerceCustomer].self, forKey: .customers)
        self.storeId = try container.decodeIfPresent(String.self, forKey: .storeId)
        self.totalItems = try container.decodeIfPresent(Int.self, forKey: .totalItems)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.customers, forKey: .customers)
        try container.encodeIfPresent(self.storeId, forKey: .storeId)
        try container.encodeIfPresent(self.totalItems, forKey: .totalItems)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case customers
        case storeId = "store_id"
        case totalItems = "total_items"
    }
}