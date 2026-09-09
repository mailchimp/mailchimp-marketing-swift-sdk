import Foundation

/// Information about a specific product.
public struct EcommerceStoresOrdersPost: Codable, Hashable, Sendable {
    /// The description of a product.
    public let description: String?
    /// The handle of a product.
    public let handle: String?
    /// A unique identifier for the product.
    public let id: EcommerceStoresOrdersPostId
    /// The image URL for a product.
    public let imageUrl: String?
    /// An array of the product's images.
    public let images: [EcommerceStoresOrdersPostImagesItem]?
    /// The date and time the product was published.
    public let publishedAtForeign: String?
    /// The title of a product.
    public let title: String
    /// The type of product.
    public let type: String?
    /// The URL for a product.
    public let url: String?
    /// An array of the product's variants. At least one variant is required for each product. A variant can use the same `id` and `title` as the parent product.
    public let variants: [EcommerceStoresOrdersPostVariantsItem]
    /// The vendor for a product.
    public let vendor: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        description: String? = nil,
        handle: String? = nil,
        id: EcommerceStoresOrdersPostId,
        imageUrl: String? = nil,
        images: [EcommerceStoresOrdersPostImagesItem]? = nil,
        publishedAtForeign: String? = nil,
        title: String,
        type: String? = nil,
        url: String? = nil,
        variants: [EcommerceStoresOrdersPostVariantsItem],
        vendor: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.description = description
        self.handle = handle
        self.id = id
        self.imageUrl = imageUrl
        self.images = images
        self.publishedAtForeign = publishedAtForeign
        self.title = title
        self.type = type
        self.url = url
        self.variants = variants
        self.vendor = vendor
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.description = try container.decodeIfPresent(String.self, forKey: .description)
        self.handle = try container.decodeIfPresent(String.self, forKey: .handle)
        self.id = try container.decode(EcommerceStoresOrdersPostId.self, forKey: .id)
        self.imageUrl = try container.decodeIfPresent(String.self, forKey: .imageUrl)
        self.images = try container.decodeIfPresent([EcommerceStoresOrdersPostImagesItem].self, forKey: .images)
        self.publishedAtForeign = try container.decodeIfPresent(String.self, forKey: .publishedAtForeign)
        self.title = try container.decode(String.self, forKey: .title)
        self.type = try container.decodeIfPresent(String.self, forKey: .type)
        self.url = try container.decodeIfPresent(String.self, forKey: .url)
        self.variants = try container.decode([EcommerceStoresOrdersPostVariantsItem].self, forKey: .variants)
        self.vendor = try container.decodeIfPresent(String.self, forKey: .vendor)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.description, forKey: .description)
        try container.encodeIfPresent(self.handle, forKey: .handle)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.imageUrl, forKey: .imageUrl)
        try container.encodeIfPresent(self.images, forKey: .images)
        try container.encodeIfPresent(self.publishedAtForeign, forKey: .publishedAtForeign)
        try container.encode(self.title, forKey: .title)
        try container.encodeIfPresent(self.type, forKey: .type)
        try container.encodeIfPresent(self.url, forKey: .url)
        try container.encode(self.variants, forKey: .variants)
        try container.encodeIfPresent(self.vendor, forKey: .vendor)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case description
        case handle
        case id
        case imageUrl = "image_url"
        case images
        case publishedAtForeign = "published_at_foreign"
        case title
        case type
        case url
        case variants
        case vendor
    }
}