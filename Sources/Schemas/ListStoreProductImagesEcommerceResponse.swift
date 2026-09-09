import Foundation

/// A collection of a product's images.
public struct ListStoreProductImagesEcommerceResponse: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ListStoreProductImagesEcommerceResponseLinksItem]?
    /// An array of objects, each representing a product image resource.
    public let images: [ListStoreProductImagesEcommerceResponseImagesItem]?
    /// The product id.
    public let productId: String?
    /// The store id.
    public let storeId: String?
    /// The total number of items matching the query regardless of pagination.
    public let totalItems: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [ListStoreProductImagesEcommerceResponseLinksItem]? = nil,
        images: [ListStoreProductImagesEcommerceResponseImagesItem]? = nil,
        productId: String? = nil,
        storeId: String? = nil,
        totalItems: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.images = images
        self.productId = productId
        self.storeId = storeId
        self.totalItems = totalItems
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([ListStoreProductImagesEcommerceResponseLinksItem].self, forKey: .links)
        self.images = try container.decodeIfPresent([ListStoreProductImagesEcommerceResponseImagesItem].self, forKey: .images)
        self.productId = try container.decodeIfPresent(String.self, forKey: .productId)
        self.storeId = try container.decodeIfPresent(String.self, forKey: .storeId)
        self.totalItems = try container.decodeIfPresent(Int.self, forKey: .totalItems)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.images, forKey: .images)
        try container.encodeIfPresent(self.productId, forKey: .productId)
        try container.encodeIfPresent(self.storeId, forKey: .storeId)
        try container.encodeIfPresent(self.totalItems, forKey: .totalItems)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case images
        case productId = "product_id"
        case storeId = "store_id"
        case totalItems = "total_items"
    }
}