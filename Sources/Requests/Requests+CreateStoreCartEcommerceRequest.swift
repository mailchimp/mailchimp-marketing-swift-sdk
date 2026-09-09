import Foundation

extension Requests {
    public struct CreateStoreCartEcommerceRequest: Codable, Hashable, Sendable {
        /// A string that uniquely identifies the campaign for a cart.
        public let campaignId: String?
        /// The URL for the cart. This parameter is required for [Abandoned Cart](https://mailchimp.com/help/create-a-classic-abandoned-cart-email/) automations.
        public let checkoutUrl: String?
        /// The three-letter ISO 4217 code for the currency that the cart uses.
        public let currencyCode: String
        public let customer: EcommerceStoresCartsPost
        /// A unique identifier for the cart.
        public let id: CreateStoreCartEcommerceRequestId
        /// An array of the cart's line items.
        public let lines: [CreateStoreCartEcommerceRequestLinesItem]
        public let orderTotal: CreateStoreCartEcommerceRequestOrderTotal
        public let taxTotal: CreateStoreCartEcommerceRequestTaxTotal?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            campaignId: String? = nil,
            checkoutUrl: String? = nil,
            currencyCode: String,
            customer: EcommerceStoresCartsPost,
            id: CreateStoreCartEcommerceRequestId,
            lines: [CreateStoreCartEcommerceRequestLinesItem],
            orderTotal: CreateStoreCartEcommerceRequestOrderTotal,
            taxTotal: CreateStoreCartEcommerceRequestTaxTotal? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.campaignId = campaignId
            self.checkoutUrl = checkoutUrl
            self.currencyCode = currencyCode
            self.customer = customer
            self.id = id
            self.lines = lines
            self.orderTotal = orderTotal
            self.taxTotal = taxTotal
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.campaignId = try container.decodeIfPresent(String.self, forKey: .campaignId)
            self.checkoutUrl = try container.decodeIfPresent(String.self, forKey: .checkoutUrl)
            self.currencyCode = try container.decode(String.self, forKey: .currencyCode)
            self.customer = try container.decode(EcommerceStoresCartsPost.self, forKey: .customer)
            self.id = try container.decode(CreateStoreCartEcommerceRequestId.self, forKey: .id)
            self.lines = try container.decode([CreateStoreCartEcommerceRequestLinesItem].self, forKey: .lines)
            self.orderTotal = try container.decode(CreateStoreCartEcommerceRequestOrderTotal.self, forKey: .orderTotal)
            self.taxTotal = try container.decodeIfPresent(CreateStoreCartEcommerceRequestTaxTotal.self, forKey: .taxTotal)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.campaignId, forKey: .campaignId)
            try container.encodeIfPresent(self.checkoutUrl, forKey: .checkoutUrl)
            try container.encode(self.currencyCode, forKey: .currencyCode)
            try container.encode(self.customer, forKey: .customer)
            try container.encode(self.id, forKey: .id)
            try container.encode(self.lines, forKey: .lines)
            try container.encode(self.orderTotal, forKey: .orderTotal)
            try container.encodeIfPresent(self.taxTotal, forKey: .taxTotal)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case campaignId = "campaign_id"
            case checkoutUrl = "checkout_url"
            case currencyCode = "currency_code"
            case customer
            case id
            case lines
            case orderTotal = "order_total"
            case taxTotal = "tax_total"
        }
    }
}