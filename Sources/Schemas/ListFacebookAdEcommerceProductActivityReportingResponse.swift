import Foundation

/// A collection of ecommerce products.
public struct ListFacebookAdEcommerceProductActivityReportingResponse: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ListFacebookAdEcommerceProductActivityReportingResponseLinksItem]?
    public let products: [ListFacebookAdEcommerceProductActivityReportingResponseProductsItem]?
    /// The total number of items matching the query regardless of pagination.
    public let totalItems: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [ListFacebookAdEcommerceProductActivityReportingResponseLinksItem]? = nil,
        products: [ListFacebookAdEcommerceProductActivityReportingResponseProductsItem]? = nil,
        totalItems: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.products = products
        self.totalItems = totalItems
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([ListFacebookAdEcommerceProductActivityReportingResponseLinksItem].self, forKey: .links)
        self.products = try container.decodeIfPresent([ListFacebookAdEcommerceProductActivityReportingResponseProductsItem].self, forKey: .products)
        self.totalItems = try container.decodeIfPresent(Int.self, forKey: .totalItems)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.products, forKey: .products)
        try container.encodeIfPresent(self.totalItems, forKey: .totalItems)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case products
        case totalItems = "total_items"
    }
}