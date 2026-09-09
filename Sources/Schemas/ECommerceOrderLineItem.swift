import Foundation

/// Information about a specific order line.
public struct ECommerceOrderLineItem: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ECommerceOrderLineItemLinksItem]?
    /// The total discount amount applied to a line item.
    public let discount: Double?
    /// A unique identifier for an order line item.
    public let id: String?
    /// The image URL for a product.
    public let imageUrl: String?
    public let price: ECommerceOrderLineItemPrice?
    /// A unique identifier for the product associated with an order line item.
    public let productId: String?
    /// The name of the product for an order line item.
    public let productTitle: String?
    /// A unique identifier for the product variant associated with an order line item.
    public let productVariantId: String?
    /// The name of the product variant for an order line item.
    public let productVariantTitle: String?
    /// The order line item quantity.
    public let quantity: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [ECommerceOrderLineItemLinksItem]? = nil,
        discount: Double? = nil,
        id: String? = nil,
        imageUrl: String? = nil,
        price: ECommerceOrderLineItemPrice? = nil,
        productId: String? = nil,
        productTitle: String? = nil,
        productVariantId: String? = nil,
        productVariantTitle: String? = nil,
        quantity: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.discount = discount
        self.id = id
        self.imageUrl = imageUrl
        self.price = price
        self.productId = productId
        self.productTitle = productTitle
        self.productVariantId = productVariantId
        self.productVariantTitle = productVariantTitle
        self.quantity = quantity
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([ECommerceOrderLineItemLinksItem].self, forKey: .links)
        self.discount = try container.decodeIfPresent(Double.self, forKey: .discount)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.imageUrl = try container.decodeIfPresent(String.self, forKey: .imageUrl)
        self.price = try container.decodeIfPresent(ECommerceOrderLineItemPrice.self, forKey: .price)
        self.productId = try container.decodeIfPresent(String.self, forKey: .productId)
        self.productTitle = try container.decodeIfPresent(String.self, forKey: .productTitle)
        self.productVariantId = try container.decodeIfPresent(String.self, forKey: .productVariantId)
        self.productVariantTitle = try container.decodeIfPresent(String.self, forKey: .productVariantTitle)
        self.quantity = try container.decodeIfPresent(Int.self, forKey: .quantity)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.discount, forKey: .discount)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.imageUrl, forKey: .imageUrl)
        try container.encodeIfPresent(self.price, forKey: .price)
        try container.encodeIfPresent(self.productId, forKey: .productId)
        try container.encodeIfPresent(self.productTitle, forKey: .productTitle)
        try container.encodeIfPresent(self.productVariantId, forKey: .productVariantId)
        try container.encodeIfPresent(self.productVariantTitle, forKey: .productVariantTitle)
        try container.encodeIfPresent(self.quantity, forKey: .quantity)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case discount
        case id
        case imageUrl = "image_url"
        case price
        case productId = "product_id"
        case productTitle = "product_title"
        case productVariantId = "product_variant_id"
        case productVariantTitle = "product_variant_title"
        case quantity
    }
}