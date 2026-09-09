import Foundation

/// Information about a specific product image.
public struct GetStoreProductImageEcommerceResponse: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [GetStoreProductImageEcommerceResponseLinksItem]?
    /// A unique identifier for the product image.
    public let id: String?
    /// The URL for a product image.
    public let url: String?
    /// The list of product variants using the image.
    public let variantIds: [String]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [GetStoreProductImageEcommerceResponseLinksItem]? = nil,
        id: String? = nil,
        url: String? = nil,
        variantIds: [String]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.id = id
        self.url = url
        self.variantIds = variantIds
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([GetStoreProductImageEcommerceResponseLinksItem].self, forKey: .links)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.url = try container.decodeIfPresent(String.self, forKey: .url)
        self.variantIds = try container.decodeIfPresent([String].self, forKey: .variantIds)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.url, forKey: .url)
        try container.encodeIfPresent(self.variantIds, forKey: .variantIds)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case id
        case url
        case variantIds = "variant_ids"
    }
}