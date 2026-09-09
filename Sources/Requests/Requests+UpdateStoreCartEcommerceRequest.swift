import Foundation

extension Requests {
    public struct UpdateStoreCartEcommerceRequest: Codable, Hashable, Sendable {
        /// A string that uniquely identifies the campaign associated with a cart.
        public let campaignId: String?
        /// The URL for the cart. This parameter is required for [Abandoned Cart](https://mailchimp.com/help/create-a-classic-abandoned-cart-email/) automations.
        public let checkoutUrl: String?
        /// The three-letter ISO 4217 code for the currency that the cart uses.
        public let currencyCode: String?
        public let customer: EcommerceStoresCartsPatch?
        /// A unique identifier for the cart.
        public let id: UpdateStoreCartEcommerceRequestId?
        /// An array of the cart's line items.
        public let lines: [UpdateStoreCartEcommerceRequestLinesItem]?
        public let orderTotal: UpdateStoreCartEcommerceRequestOrderTotal?
        public let taxTotal: UpdateStoreCartEcommerceRequestTaxTotal?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            campaignId: String? = nil,
            checkoutUrl: String? = nil,
            currencyCode: String? = nil,
            customer: EcommerceStoresCartsPatch? = nil,
            id: UpdateStoreCartEcommerceRequestId? = nil,
            lines: [UpdateStoreCartEcommerceRequestLinesItem]? = nil,
            orderTotal: UpdateStoreCartEcommerceRequestOrderTotal? = nil,
            taxTotal: UpdateStoreCartEcommerceRequestTaxTotal? = nil,
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
            self.currencyCode = try container.decodeIfPresent(String.self, forKey: .currencyCode)
            self.customer = try container.decodeIfPresent(EcommerceStoresCartsPatch.self, forKey: .customer)
            self.id = try container.decodeIfPresent(UpdateStoreCartEcommerceRequestId.self, forKey: .id)
            self.lines = try container.decodeIfPresent([UpdateStoreCartEcommerceRequestLinesItem].self, forKey: .lines)
            self.orderTotal = try container.decodeIfPresent(UpdateStoreCartEcommerceRequestOrderTotal.self, forKey: .orderTotal)
            self.taxTotal = try container.decodeIfPresent(UpdateStoreCartEcommerceRequestTaxTotal.self, forKey: .taxTotal)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.campaignId, forKey: .campaignId)
            try container.encodeIfPresent(self.checkoutUrl, forKey: .checkoutUrl)
            try container.encodeIfPresent(self.currencyCode, forKey: .currencyCode)
            try container.encodeIfPresent(self.customer, forKey: .customer)
            try container.encodeIfPresent(self.id, forKey: .id)
            try container.encodeIfPresent(self.lines, forKey: .lines)
            try container.encodeIfPresent(self.orderTotal, forKey: .orderTotal)
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