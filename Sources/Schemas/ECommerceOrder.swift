import Foundation

/// Information about a specific order.
public struct ECommerceOrder: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ECommerceOrderLinksItem]?
    /// The billing address for the order.
    public let billingAddress: ECommerceOrderBillingAddress?
    /// A string that uniquely identifies the campaign associated with an order.
    public let campaignId: String?
    /// A cart id that the order was placed for.
    public let cartId: String?
    /// The date and time the order was cancelled in ISO 8601 format.
    public let cancelledAtForeign: Date?
    /// The three-letter ISO 4217 code for the currency that the store accepts.
    public let currencyCode: String?
    public let customer: ECommerceCustomer?
    /// The total amount of the discounts to be applied to the price of the order.
    public let discountTotal: Double?
    /// The order status. Use this parameter to trigger [Order Notifications](https://mailchimp.com/developer/marketing/docs/e-commerce/#order-notifications).
    public let financialStatus: String?
    /// The fulfillment status for the order. Use this parameter to trigger [Order Notifications](https://mailchimp.com/developer/marketing/docs/e-commerce/#order-notifications).
    public let fulfillmentStatus: String?
    /// A unique identifier for the order.
    public let id: String?
    /// The URL for the page where the buyer landed when entering the shop.
    public let landingSite: String?
    /// An array of the order's line items.
    public let lines: [ECommerceOrderLineItem]?
    public let orderTotal: ECommerceOrderOrderTotal?
    /// The URL for the order.
    public let orderUrl: String?
    /// The outreach associated with this order. For example, an email campaign or Facebook ad.
    public let outreach: ECommerceOrderOutreach?
    /// The date and time the order was processed in ISO 8601 format.
    public let processedAtForeign: Date?
    /// The promo codes applied on the order
    public let promos: [ECommerceOrderPromosItem]?
    /// The shipping address for the order.
    public let shippingAddress: ECommerceOrderShippingAddress?
    public let shippingTotal: ECommerceOrderShippingTotal?
    /// The unique identifier for the store.
    public let storeId: String?
    public let taxTotal: ECommerceOrderTaxTotal?
    /// The tracking carrier associated with the order.
    public let trackingCarrier: String?
    /// The Mailchimp tracking code for the order. Uses the 'mc_tc' parameter in E-Commerce tracking URLs.
    public let trackingCode: ECommerceOrderTrackingCode?
    /// The tracking number associated with the order.
    public let trackingNumber: String?
    /// The tracking URL associated with the order.
    public let trackingUrl: String?
    /// The date and time the order was updated in ISO 8601 format.
    public let updatedAtForeign: Date?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [ECommerceOrderLinksItem]? = nil,
        billingAddress: ECommerceOrderBillingAddress? = nil,
        campaignId: String? = nil,
        cartId: String? = nil,
        cancelledAtForeign: Date? = nil,
        currencyCode: String? = nil,
        customer: ECommerceCustomer? = nil,
        discountTotal: Double? = nil,
        financialStatus: String? = nil,
        fulfillmentStatus: String? = nil,
        id: String? = nil,
        landingSite: String? = nil,
        lines: [ECommerceOrderLineItem]? = nil,
        orderTotal: ECommerceOrderOrderTotal? = nil,
        orderUrl: String? = nil,
        outreach: ECommerceOrderOutreach? = nil,
        processedAtForeign: Date? = nil,
        promos: [ECommerceOrderPromosItem]? = nil,
        shippingAddress: ECommerceOrderShippingAddress? = nil,
        shippingTotal: ECommerceOrderShippingTotal? = nil,
        storeId: String? = nil,
        taxTotal: ECommerceOrderTaxTotal? = nil,
        trackingCarrier: String? = nil,
        trackingCode: ECommerceOrderTrackingCode? = nil,
        trackingNumber: String? = nil,
        trackingUrl: String? = nil,
        updatedAtForeign: Date? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
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
        self.storeId = storeId
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
        self.links = try container.decodeIfPresent([ECommerceOrderLinksItem].self, forKey: .links)
        self.billingAddress = try container.decodeIfPresent(ECommerceOrderBillingAddress.self, forKey: .billingAddress)
        self.campaignId = try container.decodeIfPresent(String.self, forKey: .campaignId)
        self.cartId = try container.decodeIfPresent(String.self, forKey: .cartId)
        self.cancelledAtForeign = try container.decodeIfPresent(Date.self, forKey: .cancelledAtForeign)
        self.currencyCode = try container.decodeIfPresent(String.self, forKey: .currencyCode)
        self.customer = try container.decodeIfPresent(ECommerceCustomer.self, forKey: .customer)
        self.discountTotal = try container.decodeIfPresent(Double.self, forKey: .discountTotal)
        self.financialStatus = try container.decodeIfPresent(String.self, forKey: .financialStatus)
        self.fulfillmentStatus = try container.decodeIfPresent(String.self, forKey: .fulfillmentStatus)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.landingSite = try container.decodeIfPresent(String.self, forKey: .landingSite)
        self.lines = try container.decodeIfPresent([ECommerceOrderLineItem].self, forKey: .lines)
        self.orderTotal = try container.decodeIfPresent(ECommerceOrderOrderTotal.self, forKey: .orderTotal)
        self.orderUrl = try container.decodeIfPresent(String.self, forKey: .orderUrl)
        self.outreach = try container.decodeIfPresent(ECommerceOrderOutreach.self, forKey: .outreach)
        self.processedAtForeign = try container.decodeIfPresent(Date.self, forKey: .processedAtForeign)
        self.promos = try container.decodeIfPresent([ECommerceOrderPromosItem].self, forKey: .promos)
        self.shippingAddress = try container.decodeIfPresent(ECommerceOrderShippingAddress.self, forKey: .shippingAddress)
        self.shippingTotal = try container.decodeIfPresent(ECommerceOrderShippingTotal.self, forKey: .shippingTotal)
        self.storeId = try container.decodeIfPresent(String.self, forKey: .storeId)
        self.taxTotal = try container.decodeIfPresent(ECommerceOrderTaxTotal.self, forKey: .taxTotal)
        self.trackingCarrier = try container.decodeIfPresent(String.self, forKey: .trackingCarrier)
        self.trackingCode = try container.decodeIfPresent(ECommerceOrderTrackingCode.self, forKey: .trackingCode)
        self.trackingNumber = try container.decodeIfPresent(String.self, forKey: .trackingNumber)
        self.trackingUrl = try container.decodeIfPresent(String.self, forKey: .trackingUrl)
        self.updatedAtForeign = try container.decodeIfPresent(Date.self, forKey: .updatedAtForeign)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.billingAddress, forKey: .billingAddress)
        try container.encodeIfPresent(self.campaignId, forKey: .campaignId)
        try container.encodeIfPresent(self.cartId, forKey: .cartId)
        try container.encodeIfPresent(self.cancelledAtForeign, forKey: .cancelledAtForeign)
        try container.encodeIfPresent(self.currencyCode, forKey: .currencyCode)
        try container.encodeIfPresent(self.customer, forKey: .customer)
        try container.encodeIfPresent(self.discountTotal, forKey: .discountTotal)
        try container.encodeIfPresent(self.financialStatus, forKey: .financialStatus)
        try container.encodeIfPresent(self.fulfillmentStatus, forKey: .fulfillmentStatus)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.landingSite, forKey: .landingSite)
        try container.encodeIfPresent(self.lines, forKey: .lines)
        try container.encodeIfPresent(self.orderTotal, forKey: .orderTotal)
        try container.encodeIfPresent(self.orderUrl, forKey: .orderUrl)
        try container.encodeIfPresent(self.outreach, forKey: .outreach)
        try container.encodeIfPresent(self.processedAtForeign, forKey: .processedAtForeign)
        try container.encodeIfPresent(self.promos, forKey: .promos)
        try container.encodeIfPresent(self.shippingAddress, forKey: .shippingAddress)
        try container.encodeIfPresent(self.shippingTotal, forKey: .shippingTotal)
        try container.encodeIfPresent(self.storeId, forKey: .storeId)
        try container.encodeIfPresent(self.taxTotal, forKey: .taxTotal)
        try container.encodeIfPresent(self.trackingCarrier, forKey: .trackingCarrier)
        try container.encodeIfPresent(self.trackingCode, forKey: .trackingCode)
        try container.encodeIfPresent(self.trackingNumber, forKey: .trackingNumber)
        try container.encodeIfPresent(self.trackingUrl, forKey: .trackingUrl)
        try container.encodeIfPresent(self.updatedAtForeign, forKey: .updatedAtForeign)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
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
        case storeId = "store_id"
        case taxTotal = "tax_total"
        case trackingCarrier = "tracking_carrier"
        case trackingCode = "tracking_code"
        case trackingNumber = "tracking_number"
        case trackingUrl = "tracking_url"
        case updatedAtForeign = "updated_at_foreign"
    }
}