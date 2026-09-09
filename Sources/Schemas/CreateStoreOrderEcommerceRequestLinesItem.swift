import Foundation

/// Information about a specific order line.
public struct CreateStoreOrderEcommerceRequestLinesItem: Codable, Hashable, Sendable {
    public let discount: CreateStoreOrderEcommerceRequestLinesItemDiscount?
    /// A unique identifier for the order line item.
    public let id: String
    public let price: CreateStoreOrderEcommerceRequestLinesItemPrice
    public let product: EcommerceStoresOrdersPost?
    /// A unique identifier for the product associated with the order line item.
    public let productId: String
    /// A unique identifier for the product variant associated with the order line item.
    public let productVariantId: String
    /// The quantity of an order line item.
    public let quantity: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        discount: CreateStoreOrderEcommerceRequestLinesItemDiscount? = nil,
        id: String,
        price: CreateStoreOrderEcommerceRequestLinesItemPrice,
        product: EcommerceStoresOrdersPost? = nil,
        productId: String,
        productVariantId: String,
        quantity: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.discount = discount
        self.id = id
        self.price = price
        self.product = product
        self.productId = productId
        self.productVariantId = productVariantId
        self.quantity = quantity
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.discount = try container.decodeIfPresent(CreateStoreOrderEcommerceRequestLinesItemDiscount.self, forKey: .discount)
        self.id = try container.decode(String.self, forKey: .id)
        self.price = try container.decode(CreateStoreOrderEcommerceRequestLinesItemPrice.self, forKey: .price)
        self.product = try container.decodeIfPresent(EcommerceStoresOrdersPost.self, forKey: .product)
        self.productId = try container.decode(String.self, forKey: .productId)
        self.productVariantId = try container.decode(String.self, forKey: .productVariantId)
        self.quantity = try container.decode(Int.self, forKey: .quantity)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.discount, forKey: .discount)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.price, forKey: .price)
        try container.encodeIfPresent(self.product, forKey: .product)
        try container.encode(self.productId, forKey: .productId)
        try container.encode(self.productVariantId, forKey: .productVariantId)
        try container.encode(self.quantity, forKey: .quantity)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case discount
        case id
        case price
        case product
        case productId = "product_id"
        case productVariantId = "product_variant_id"
        case quantity
    }
}