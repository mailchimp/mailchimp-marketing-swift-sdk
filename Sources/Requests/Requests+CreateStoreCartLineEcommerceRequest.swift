import Foundation

extension Requests {
    public struct CreateStoreCartLineEcommerceRequest: Codable, Hashable, Sendable {
        /// A unique identifier for the cart line item.
        public let id: String
        public let price: CreateStoreCartLineEcommerceRequestPrice
        /// A unique identifier for the product associated with the cart line item.
        public let productId: String
        /// A unique identifier for the product variant associated with the cart line item.
        public let productVariantId: String
        /// The quantity of a cart line item.
        public let quantity: Int
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            id: String,
            price: CreateStoreCartLineEcommerceRequestPrice,
            productId: String,
            productVariantId: String,
            quantity: Int,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.id = id
            self.price = price
            self.productId = productId
            self.productVariantId = productVariantId
            self.quantity = quantity
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = try container.decode(String.self, forKey: .id)
            self.price = try container.decode(CreateStoreCartLineEcommerceRequestPrice.self, forKey: .price)
            self.productId = try container.decode(String.self, forKey: .productId)
            self.productVariantId = try container.decode(String.self, forKey: .productVariantId)
            self.quantity = try container.decode(Int.self, forKey: .quantity)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.id, forKey: .id)
            try container.encode(self.price, forKey: .price)
            try container.encode(self.productId, forKey: .productId)
            try container.encode(self.productVariantId, forKey: .productVariantId)
            try container.encode(self.quantity, forKey: .quantity)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case price
            case productId = "product_id"
            case productVariantId = "product_variant_id"
            case quantity
        }
    }
}