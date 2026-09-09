import Foundation

/// Information about a specific cart.
public struct ECommerceCart: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ECommerceCartLinksItem]?
    /// A string that uniquely identifies the campaign associated with a cart.
    public let campaignId: String?
    /// The URL for the cart. This parameter is required for [Abandoned Cart](https://mailchimp.com/help/create-a-classic-abandoned-cart-email/) automations.
    public let checkoutUrl: String?
    /// The date and time the cart was created in ISO 8601 format.
    public let createdAt: Date?
    /// The three-letter ISO 4217 code for the currency that the cart uses.
    public let currencyCode: String?
    public let customer: ECommerceCustomer?
    /// A unique identifier for the cart.
    public let id: String?
    /// An array of the cart's line items.
    public let lines: [ECommerceCartLineItem]?
    /// The order total for the cart.
    public let orderTotal: Double?
    /// The total tax for the cart.
    public let taxTotal: Double?
    /// The date and time the cart was last updated in ISO 8601 format.
    public let updatedAt: Date?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [ECommerceCartLinksItem]? = nil,
        campaignId: String? = nil,
        checkoutUrl: String? = nil,
        createdAt: Date? = nil,
        currencyCode: String? = nil,
        customer: ECommerceCustomer? = nil,
        id: String? = nil,
        lines: [ECommerceCartLineItem]? = nil,
        orderTotal: Double? = nil,
        taxTotal: Double? = nil,
        updatedAt: Date? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.campaignId = campaignId
        self.checkoutUrl = checkoutUrl
        self.createdAt = createdAt
        self.currencyCode = currencyCode
        self.customer = customer
        self.id = id
        self.lines = lines
        self.orderTotal = orderTotal
        self.taxTotal = taxTotal
        self.updatedAt = updatedAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([ECommerceCartLinksItem].self, forKey: .links)
        self.campaignId = try container.decodeIfPresent(String.self, forKey: .campaignId)
        self.checkoutUrl = try container.decodeIfPresent(String.self, forKey: .checkoutUrl)
        self.createdAt = try container.decodeIfPresent(Date.self, forKey: .createdAt)
        self.currencyCode = try container.decodeIfPresent(String.self, forKey: .currencyCode)
        self.customer = try container.decodeIfPresent(ECommerceCustomer.self, forKey: .customer)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.lines = try container.decodeIfPresent([ECommerceCartLineItem].self, forKey: .lines)
        self.orderTotal = try container.decodeIfPresent(Double.self, forKey: .orderTotal)
        self.taxTotal = try container.decodeIfPresent(Double.self, forKey: .taxTotal)
        self.updatedAt = try container.decodeIfPresent(Date.self, forKey: .updatedAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.campaignId, forKey: .campaignId)
        try container.encodeIfPresent(self.checkoutUrl, forKey: .checkoutUrl)
        try container.encodeIfPresent(self.createdAt, forKey: .createdAt)
        try container.encodeIfPresent(self.currencyCode, forKey: .currencyCode)
        try container.encodeIfPresent(self.customer, forKey: .customer)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.lines, forKey: .lines)
        try container.encodeIfPresent(self.orderTotal, forKey: .orderTotal)
        try container.encodeIfPresent(self.taxTotal, forKey: .taxTotal)
        try container.encodeIfPresent(self.updatedAt, forKey: .updatedAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case campaignId = "campaign_id"
        case checkoutUrl = "checkout_url"
        case createdAt = "created_at"
        case currencyCode = "currency_code"
        case customer
        case id
        case lines
        case orderTotal = "order_total"
        case taxTotal = "tax_total"
        case updatedAt = "updated_at"
    }
}