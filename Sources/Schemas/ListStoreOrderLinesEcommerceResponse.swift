import Foundation

/// A collection of an order's line items.
public struct ListStoreOrderLinesEcommerceResponse: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ListStoreOrderLinesEcommerceResponseLinksItem]?
    /// An array of objects, each representing an order's line item.
    public let lines: [ECommerceOrderLineItem]?
    /// The order id.
    public let orderId: String?
    /// The store id.
    public let storeId: String?
    /// The total number of items matching the query regardless of pagination.
    public let totalItems: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [ListStoreOrderLinesEcommerceResponseLinksItem]? = nil,
        lines: [ECommerceOrderLineItem]? = nil,
        orderId: String? = nil,
        storeId: String? = nil,
        totalItems: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.lines = lines
        self.orderId = orderId
        self.storeId = storeId
        self.totalItems = totalItems
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([ListStoreOrderLinesEcommerceResponseLinksItem].self, forKey: .links)
        self.lines = try container.decodeIfPresent([ECommerceOrderLineItem].self, forKey: .lines)
        self.orderId = try container.decodeIfPresent(String.self, forKey: .orderId)
        self.storeId = try container.decodeIfPresent(String.self, forKey: .storeId)
        self.totalItems = try container.decodeIfPresent(Int.self, forKey: .totalItems)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.lines, forKey: .lines)
        try container.encodeIfPresent(self.orderId, forKey: .orderId)
        try container.encodeIfPresent(self.storeId, forKey: .storeId)
        try container.encodeIfPresent(self.totalItems, forKey: .totalItems)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case lines
        case orderId = "order_id"
        case storeId = "store_id"
        case totalItems = "total_items"
    }
}