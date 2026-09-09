import Foundation

/// Information about a specific product image.
public struct EcommerceStoresOrdersPostImagesItem: Codable, Hashable, Sendable {
    /// A unique identifier for the product image.
    public let id: String
    /// The URL for a product image.
    public let url: String
    /// The list of product variants using the image.
    public let variantIds: [EcommerceStoresOrdersPostImagesItemVariantIdsItem]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        url: String,
        variantIds: [EcommerceStoresOrdersPostImagesItemVariantIdsItem]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.url = url
        self.variantIds = variantIds
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.url = try container.decode(String.self, forKey: .url)
        self.variantIds = try container.decodeIfPresent([EcommerceStoresOrdersPostImagesItemVariantIdsItem].self, forKey: .variantIds)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.url, forKey: .url)
        try container.encodeIfPresent(self.variantIds, forKey: .variantIds)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case url
        case variantIds = "variant_ids"
    }
}