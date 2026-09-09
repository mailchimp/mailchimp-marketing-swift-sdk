import Foundation

/// Information about a specific product variant.
public struct UpdateStoreProductEcommerceRequestVariantsItem: Codable, Hashable, Sendable {
    /// The backorders of a product variant.
    public let backorders: String?
    /// The image URL for a product variant.
    public let imageUrl: String?
    /// The inventory quantity of a product variant.
    public let inventoryQuantity: Int?
    public let price: UpdateStoreProductEcommerceRequestVariantsItemPrice?
    /// The stock keeping unit (SKU) of a product variant.
    public let sku: String?
    /// The title of a product variant.
    public let title: String?
    /// The URL for a product variant.
    public let url: String?
    /// The visibility of a product variant.
    public let visibility: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        backorders: String? = nil,
        imageUrl: String? = nil,
        inventoryQuantity: Int? = nil,
        price: UpdateStoreProductEcommerceRequestVariantsItemPrice? = nil,
        sku: String? = nil,
        title: String? = nil,
        url: String? = nil,
        visibility: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.backorders = backorders
        self.imageUrl = imageUrl
        self.inventoryQuantity = inventoryQuantity
        self.price = price
        self.sku = sku
        self.title = title
        self.url = url
        self.visibility = visibility
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.backorders = try container.decodeIfPresent(String.self, forKey: .backorders)
        self.imageUrl = try container.decodeIfPresent(String.self, forKey: .imageUrl)
        self.inventoryQuantity = try container.decodeIfPresent(Int.self, forKey: .inventoryQuantity)
        self.price = try container.decodeIfPresent(UpdateStoreProductEcommerceRequestVariantsItemPrice.self, forKey: .price)
        self.sku = try container.decodeIfPresent(String.self, forKey: .sku)
        self.title = try container.decodeIfPresent(String.self, forKey: .title)
        self.url = try container.decodeIfPresent(String.self, forKey: .url)
        self.visibility = try container.decodeIfPresent(String.self, forKey: .visibility)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.backorders, forKey: .backorders)
        try container.encodeIfPresent(self.imageUrl, forKey: .imageUrl)
        try container.encodeIfPresent(self.inventoryQuantity, forKey: .inventoryQuantity)
        try container.encodeIfPresent(self.price, forKey: .price)
        try container.encodeIfPresent(self.sku, forKey: .sku)
        try container.encodeIfPresent(self.title, forKey: .title)
        try container.encodeIfPresent(self.url, forKey: .url)
        try container.encodeIfPresent(self.visibility, forKey: .visibility)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case backorders
        case imageUrl = "image_url"
        case inventoryQuantity = "inventory_quantity"
        case price
        case sku
        case title
        case url
        case visibility
    }
}