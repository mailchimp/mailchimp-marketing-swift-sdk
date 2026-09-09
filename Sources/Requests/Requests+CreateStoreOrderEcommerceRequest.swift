import Foundation

extension Requests {
    public struct CreateStoreOrderEcommerceRequest: Codable, Hashable, Sendable {
        /// The billing address for the order.
        public let billingAddress: CreateStoreOrderEcommerceRequestBillingAddress?
        /// A string that uniquely identifies the campaign for an order.
        public let campaignId: String?
        /// A cart id that the order was placed for.
        public let cartId: CreateStoreOrderEcommerceRequestCartId?
        /// The date and time the order was cancelled in ISO 8601 format. Note: passing a value for this parameter will cancel the order being created.
        public let cancelledAtForeign: String?
        /// The three-letter ISO 4217 code for the currency that the store accepts.
        public let currencyCode: String
        public let customer: EcommerceStoresCartsPost
        public let discountTotal: CreateStoreOrderEcommerceRequestDiscountTotal?
        /// The order status. Use this parameter to trigger [Order Notifications](https://mailchimp.com/developer/marketing/docs/e-commerce/#order-notifications).
        public let financialStatus: String?
        /// The fulfillment status for the order. Use this parameter to trigger [Order Notifications](https://mailchimp.com/developer/marketing/docs/e-commerce/#order-notifications).
        public let fulfillmentStatus: String?
        /// A unique identifier for the order.
        public let id: String
        /// The URL for the page where the buyer landed when entering the shop.
        public let landingSite: String?
        /// An array of the order's line items.
        public let lines: [CreateStoreOrderEcommerceRequestLinesItem]
        public let orderTotal: CreateStoreOrderEcommerceRequestOrderTotal
        /// The URL for the order.
        public let orderUrl: String?
        /// The outreach associated with this order. For example, an email campaign or Facebook ad.
        public let outreach: CreateStoreOrderEcommerceRequestOutreach?
        /// The date and time the order was processed in ISO 8601 format.
        public let processedAtForeign: String?
        /// The promo codes applied on the order
        public let promos: [CreateStoreOrderEcommerceRequestPromosItem]?
        /// The shipping address for the order.
        public let shippingAddress: CreateStoreOrderEcommerceRequestShippingAddress?
        public let shippingTotal: CreateStoreOrderEcommerceRequestShippingTotal?
        public let taxTotal: CreateStoreOrderEcommerceRequestTaxTotal?
        /// The tracking carrier associated with the order.
        public let trackingCarrier: String?
        /// The Mailchimp tracking code for the order. Uses the 'mc_tc' parameter in E-Commerce tracking URLs.
        public let trackingCode: CreateStoreOrderEcommerceRequestTrackingCode?
        /// The tracking number associated with the order.
        public let trackingNumber: String?
        /// The tracking URL associated with the order.
        public let trackingUrl: String?
        /// The date and time the order was updated in ISO 8601 format.
        public let updatedAtForeign: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            billingAddress: CreateStoreOrderEcommerceRequestBillingAddress? = nil,
            campaignId: String? = nil,
            cartId: CreateStoreOrderEcommerceRequestCartId? = nil,
            cancelledAtForeign: String? = nil,
            currencyCode: String,
            customer: EcommerceStoresCartsPost,
            discountTotal: CreateStoreOrderEcommerceRequestDiscountTotal? = nil,
            financialStatus: String? = nil,
            fulfillmentStatus: String? = nil,
            id: String,
            landingSite: String? = nil,
            lines: [CreateStoreOrderEcommerceRequestLinesItem],
            orderTotal: CreateStoreOrderEcommerceRequestOrderTotal,
            orderUrl: String? = nil,
            outreach: CreateStoreOrderEcommerceRequestOutreach? = nil,
            processedAtForeign: String? = nil,
            promos: [CreateStoreOrderEcommerceRequestPromosItem]? = nil,
            shippingAddress: CreateStoreOrderEcommerceRequestShippingAddress? = nil,
            shippingTotal: CreateStoreOrderEcommerceRequestShippingTotal? = nil,
            taxTotal: CreateStoreOrderEcommerceRequestTaxTotal? = nil,
            trackingCarrier: String? = nil,
            trackingCode: CreateStoreOrderEcommerceRequestTrackingCode? = nil,
            trackingNumber: String? = nil,
            trackingUrl: String? = nil,
            updatedAtForeign: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.billingAddress = billingAddress
            self.campaignId = campaignId
            self.cartId = cartId
            self.cancelledAtForeign = cancelledAtForeign
            self.currencyCode = currencyCode
            self.customer = customer
            self.discountTotal = discountTotal
            self.financialStatus = financialStatus
            self.fulfillmentStatus = fulfillmentStatus
            self.id = id
            self.landingSite = landingSite
            self.lines = lines
            self.orderTotal = orderTotal
            self.orderUrl = orderUrl
            self.outreach = outreach
            self.processedAtForeign = processedAtForeign
            self.promos = promos
            self.shippingAddress = shippingAddress
            self.shippingTotal = shippingTotal
            self.taxTotal = taxTotal
            self.trackingCarrier = trackingCarrier
            self.trackingCode = trackingCode
            self.trackingNumber = trackingNumber
            self.trackingUrl = trackingUrl
            self.updatedAtForeign = updatedAtForeign
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.billingAddress = try container.decodeIfPresent(CreateStoreOrderEcommerceRequestBillingAddress.self, forKey: .billingAddress)
            self.campaignId = try container.decodeIfPresent(String.self, forKey: .campaignId)
            self.cartId = try container.decodeIfPresent(CreateStoreOrderEcommerceRequestCartId.self, forKey: .cartId)
            self.cancelledAtForeign = try container.decodeIfPresent(String.self, forKey: .cancelledAtForeign)
            self.currencyCode = try container.decode(String.self, forKey: .currencyCode)
            self.customer = try container.decode(EcommerceStoresCartsPost.self, forKey: .customer)
            self.discountTotal = try container.decodeIfPresent(CreateStoreOrderEcommerceRequestDiscountTotal.self, forKey: .discountTotal)
            self.financialStatus = try container.decodeIfPresent(String.self, forKey: .financialStatus)
            self.fulfillmentStatus = try container.decodeIfPresent(String.self, forKey: .fulfillmentStatus)
            self.id = try container.decode(String.self, forKey: .id)
            self.landingSite = try container.decodeIfPresent(String.self, forKey: .landingSite)
            self.lines = try container.decode([CreateStoreOrderEcommerceRequestLinesItem].self, forKey: .lines)
            self.orderTotal = try container.decode(CreateStoreOrderEcommerceRequestOrderTotal.self, forKey: .orderTotal)
            self.orderUrl = try container.decodeIfPresent(String.self, forKey: .orderUrl)
            self.outreach = try container.decodeIfPresent(CreateStoreOrderEcommerceRequestOutreach.self, forKey: .outreach)
            self.processedAtForeign = try container.decodeIfPresent(String.self, forKey: .processedAtForeign)
            self.promos = try container.decodeIfPresent([CreateStoreOrderEcommerceRequestPromosItem].self, forKey: .promos)
            self.shippingAddress = try container.decodeIfPresent(CreateStoreOrderEcommerceRequestShippingAddress.self, forKey: .shippingAddress)
            self.shippingTotal = try container.decodeIfPresent(CreateStoreOrderEcommerceRequestShippingTotal.self, forKey: .shippingTotal)
            self.taxTotal = try container.decodeIfPresent(CreateStoreOrderEcommerceRequestTaxTotal.self, forKey: .taxTotal)
            self.trackingCarrier = try container.decodeIfPresent(String.self, forKey: .trackingCarrier)
            self.trackingCode = try container.decodeIfPresent(CreateStoreOrderEcommerceRequestTrackingCode.self, forKey: .trackingCode)
            self.trackingNumber = try container.decodeIfPresent(String.self, forKey: .trackingNumber)
            self.trackingUrl = try container.decodeIfPresent(String.self, forKey: .trackingUrl)
            self.updatedAtForeign = try container.decodeIfPresent(String.self, forKey: .updatedAtForeign)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.billingAddress, forKey: .billingAddress)
            try container.encodeIfPresent(self.campaignId, forKey: .campaignId)
            try container.encodeIfPresent(self.cartId, forKey: .cartId)
            try container.encodeIfPresent(self.cancelledAtForeign, forKey: .cancelledAtForeign)
            try container.encode(self.currencyCode, forKey: .currencyCode)
            try container.encode(self.customer, forKey: .customer)
            try container.encodeIfPresent(self.discountTotal, forKey: .discountTotal)
            try container.encodeIfPresent(self.financialStatus, forKey: .financialStatus)
            try container.encodeIfPresent(self.fulfillmentStatus, forKey: .fulfillmentStatus)
            try container.encode(self.id, forKey: .id)
            try container.encodeIfPresent(self.landingSite, forKey: .landingSite)
            try container.encode(self.lines, forKey: .lines)
            try container.encode(self.orderTotal, forKey: .orderTotal)
            try container.encodeIfPresent(self.orderUrl, forKey: .orderUrl)
            try container.encodeIfPresent(self.outreach, forKey: .outreach)
            try container.encodeIfPresent(self.processedAtForeign, forKey: .processedAtForeign)
            try container.encodeIfPresent(self.promos, forKey: .promos)
            try container.encodeIfPresent(self.shippingAddress, forKey: .shippingAddress)
            try container.encodeIfPresent(self.shippingTotal, forKey: .shippingTotal)
            try container.encodeIfPresent(self.taxTotal, forKey: .taxTotal)
            try container.encodeIfPresent(self.trackingCarrier, forKey: .trackingCarrier)
            try container.encodeIfPresent(self.trackingCode, forKey: .trackingCode)
            try container.encodeIfPresent(self.trackingNumber, forKey: .trackingNumber)
            try container.encodeIfPresent(self.trackingUrl, forKey: .trackingUrl)
            try container.encodeIfPresent(self.updatedAtForeign, forKey: .updatedAtForeign)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case billingAddress = "billing_address"
            case campaignId = "campaign_id"
            case cartId = "cart_id"
            case cancelledAtForeign = "cancelled_at_foreign"
            case currencyCode = "currency_code"
            case customer
            case discountTotal = "discount_total"
            case financialStatus = "financial_status"
            case fulfillmentStatus = "fulfillment_status"
            case id
            case landingSite = "landing_site"
            case lines
            case orderTotal = "order_total"
            case orderUrl = "order_url"
            case outreach
            case processedAtForeign = "processed_at_foreign"
            case promos
            case shippingAddress = "shipping_address"
            case shippingTotal = "shipping_total"
            case taxTotal = "tax_total"
            case trackingCarrier = "tracking_carrier"
            case trackingCode = "tracking_code"
            case trackingNumber = "tracking_number"
            case trackingUrl = "tracking_url"
            case updatedAtForeign = "updated_at_foreign"
        }
    }
}