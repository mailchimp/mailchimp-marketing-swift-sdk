import Foundation

/// Information about a specific product variant.
public struct ECommerceProductVariant: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ECommerceProductVariantLinksItem]?
    /// The backorders of a product variant.
    public let backorders: String?
    /// The date and time the product was created in ISO 8601 format.
    public let createdAt: Date?
    /// A unique identifier for the product variant.
    public let id: String?
    /// The image URL for a product variant.
    public let imageUrl: String?
    /// The inventory quantity of a product variant.
    public let inventoryQuantity: Int?
    /// The price of a product variant.
    public let price: Double?
    /// The stock keeping unit (SKU) of a product variant.
    public let sku: String?
    /// The title of a product variant.
    public let title: String?
    /// The date and time the product was last updated in ISO 8601 format.
    public let updatedAt: Date?
    /// The URL for a product variant.
    public let url: String?
    /// The visibility of a product variant.
    public let visibility: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [ECommerceProductVariantLinksItem]? = nil,
        backorders: String? = nil,
        createdAt: Date? = nil,
        id: String? = nil,
        imageUrl: String? = nil,
        inventoryQuantity: Int? = nil,
        price: Double? = nil,
        sku: String? = nil,
        title: String? = nil,
        updatedAt: Date? = nil,
        url: String? = nil,
        visibility: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.backorders = backorders
        self.createdAt = createdAt
        self.id = id
        self.imageUrl = imageUrl
        self.inventoryQuantity = inventoryQuantity
        self.price = price
        self.sku = sku
        self.title = title
        self.updatedAt = updatedAt
        self.url = url
        self.visibility = visibility
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([ECommerceProductVariantLinksItem].self, forKey: .links)
        self.backorders = try container.decodeIfPresent(String.self, forKey: .backorders)
        self.createdAt = try container.decodeIfPresent(Date.self, forKey: .createdAt)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.imageUrl = try container.decodeIfPresent(String.self, forKey: .imageUrl)
        self.inventoryQuantity = try container.decodeIfPresent(Int.self, forKey: .inventoryQuantity)
        self.price = try container.decodeIfPresent(Double.self, forKey: .price)
        self.sku = try container.decodeIfPresent(String.self, forKey: .sku)
        self.title = try container.decodeIfPresent(String.self, forKey: .title)
        self.updatedAt = try container.decodeIfPresent(Date.self, forKey: .updatedAt)
        self.url = try container.decodeIfPresent(String.self, forKey: .url)
        self.visibility = try container.decodeIfPresent(String.self, forKey: .visibility)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.backorders, forKey: .backorders)
        try container.encodeIfPresent(self.createdAt, forKey: .createdAt)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.imageUrl, forKey: .imageUrl)
        try container.encodeIfPresent(self.inventoryQuantity, forKey: .inventoryQuantity)
        try container.encodeIfPresent(self.price, forKey: .price)
        try container.encodeIfPresent(self.sku, forKey: .sku)
        try container.encodeIfPresent(self.title, forKey: .title)
        try container.encodeIfPresent(self.updatedAt, forKey: .updatedAt)
        try container.encodeIfPresent(self.url, forKey: .url)
        try container.encodeIfPresent(self.visibility, forKey: .visibility)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case backorders
        case createdAt = "created_at"
        case id
        case imageUrl = "image_url"
        case inventoryQuantity = "inventory_quantity"
        case price
        case sku
        case title
        case updatedAt = "updated_at"
        case url
        case visibility
    }
}