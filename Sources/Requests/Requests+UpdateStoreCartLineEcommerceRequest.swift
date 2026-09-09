import Foundation

extension Requests {
    public struct UpdateStoreCartLineEcommerceRequest: Codable, Hashable, Sendable {
        public let price: UpdateStoreCartLineEcommerceRequestPrice?
        /// A unique identifier for the product associated with the cart line item.
        public let productId: String?
        /// A unique identifier for the product variant associated with the cart line item.
        public let productVariantId: String?
        /// The quantity of a cart line item.
        public let quantity: Int?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            price: UpdateStoreCartLineEcommerceRequestPrice? = nil,
            productId: String? = nil,
            productVariantId: String? = nil,
            quantity: Int? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.price = price
            self.productId = productId
            self.productVariantId = productVariantId
            self.quantity = quantity
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.price = try container.decodeIfPresent(UpdateStoreCartLineEcommerceRequestPrice.self, forKey: .price)
            self.productId = try container.decodeIfPresent(String.self, forKey: .productId)
            self.productVariantId = try container.decodeIfPresent(String.self, forKey: .productVariantId)
            self.quantity = try container.decodeIfPresent(Int.self, forKey: .quantity)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.price, forKey: .price)
            try container.encodeIfPresent(self.productId, forKey: .productId)
            try container.encodeIfPresent(self.productVariantId, forKey: .productVariantId)
            try container.encodeIfPresent(self.quantity, forKey: .quantity)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case price
            case productId = "product_id"
            case productVariantId = "product_variant_id"
            case quantity
        }
    }
}