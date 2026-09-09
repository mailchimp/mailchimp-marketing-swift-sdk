import Foundation

extension Requests {
    public struct UpdateStoreOrderLineEcommerceRequest: Codable, Hashable, Sendable {
        public let discount: UpdateStoreOrderLineEcommerceRequestDiscount?
        /// A unique identifier for the order line item.
        public let id: String?
        public let price: UpdateStoreOrderLineEcommerceRequestPrice?
        /// A unique identifier for the product associated with the order line item.
        public let productId: String?
        /// A unique identifier for the product variant associated with the order line item.
        public let productVariantId: String?
        /// The quantity of an order line item.
        public let quantity: Int?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            discount: UpdateStoreOrderLineEcommerceRequestDiscount? = nil,
            id: String? = nil,
            price: UpdateStoreOrderLineEcommerceRequestPrice? = nil,
            productId: String? = nil,
            productVariantId: String? = nil,
            quantity: Int? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.discount = discount
            self.id = id
            self.price = price
            self.productId = productId
            self.productVariantId = productVariantId
            self.quantity = quantity
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.discount = try container.decodeIfPresent(UpdateStoreOrderLineEcommerceRequestDiscount.self, forKey: .discount)
            self.id = try container.decodeIfPresent(String.self, forKey: .id)
            self.price = try container.decodeIfPresent(UpdateStoreOrderLineEcommerceRequestPrice.self, forKey: .price)
            self.productId = try container.decodeIfPresent(String.self, forKey: .productId)
            self.productVariantId = try container.decodeIfPresent(String.self, forKey: .productVariantId)
            self.quantity = try container.decodeIfPresent(Int.self, forKey: .quantity)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.discount, forKey: .discount)
            try container.encodeIfPresent(self.id, forKey: .id)
            try container.encodeIfPresent(self.price, forKey: .price)
            try container.encodeIfPresent(self.productId, forKey: .productId)
            try container.encodeIfPresent(self.productVariantId, forKey: .productVariantId)
            try container.encodeIfPresent(self.quantity, forKey: .quantity)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case discount
            case id
            case price
            case productId = "product_id"
            case productVariantId = "product_variant_id"
            case quantity
        }
    }
}