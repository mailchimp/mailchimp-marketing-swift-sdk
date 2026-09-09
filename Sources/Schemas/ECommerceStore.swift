import Foundation

/// An individual store in an account.
public struct ECommerceStore: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ECommerceStoreLinksItem]?
    /// The store address.
    public let address: ECommerceStoreAddress?
    /// Details for the automations attached to this store.
    public let automations: ECommerceStoreAutomations?
    /// The Connected Site associated with the store.
    public let connectedSite: ECommerceStoreConnectedSite?
    /// The date and time the store was created in ISO 8601 format.
    public let createdAt: Date?
    /// The three-letter ISO 4217 code for the currency that the store accepts.
    public let currencyCode: String?
    /// The store domain.  The store domain must be unique within a user account.
    public let domain: String?
    /// The email address for the store.
    public let emailAddress: String?
    /// The unique identifier for the store.
    public let id: String?
    /// Whether to disable automations because the store is currently [syncing](https://mailchimp.com/developer/marketing/docs/e-commerce/#pausing-store-automations).
    public let isSyncing: Bool?
    /// The unique identifier for the list that's associated with the store. The `list_id` for a specific store can't change.
    public let listId: String?
    /// The status of the list connected to the store, namely if it's deleted or disabled.
    public let listIsActive: Bool?
    /// The currency format for the store. For example: `$`, `£`, etc.
    public let moneyFormat: String?
    /// The name of the store.
    public let name: String?
    /// The store phone number.
    public let phone: String?
    /// The e-commerce platform of the store.
    public let platform: String?
    /// The primary locale for the store. For example: `en`, `de`, etc.
    public let primaryLocale: String?
    /// The timezone for the store.
    public let timezone: String?
    /// The date and time the store was last updated in ISO 8601 format.
    public let updatedAt: Date?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [ECommerceStoreLinksItem]? = nil,
        address: ECommerceStoreAddress? = nil,
        automations: ECommerceStoreAutomations? = nil,
        connectedSite: ECommerceStoreConnectedSite? = nil,
        createdAt: Date? = nil,
        currencyCode: String? = nil,
        domain: String? = nil,
        emailAddress: String? = nil,
        id: String? = nil,
        isSyncing: Bool? = nil,
        listId: String? = nil,
        listIsActive: Bool? = nil,
        moneyFormat: String? = nil,
        name: String? = nil,
        phone: String? = nil,
        platform: String? = nil,
        primaryLocale: String? = nil,
        timezone: String? = nil,
        updatedAt: Date? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.address = address
        self.automations = automations
        self.connectedSite = connectedSite
        self.createdAt = createdAt
        self.currencyCode = currencyCode
        self.domain = domain
        self.emailAddress = emailAddress
        self.id = id
        self.isSyncing = isSyncing
        self.listId = listId
        self.listIsActive = listIsActive
        self.moneyFormat = moneyFormat
        self.name = name
        self.phone = phone
        self.platform = platform
        self.primaryLocale = primaryLocale
        self.timezone = timezone
        self.updatedAt = updatedAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([ECommerceStoreLinksItem].self, forKey: .links)
        self.address = try container.decodeIfPresent(ECommerceStoreAddress.self, forKey: .address)
        self.automations = try container.decodeIfPresent(ECommerceStoreAutomations.self, forKey: .automations)
        self.connectedSite = try container.decodeIfPresent(ECommerceStoreConnectedSite.self, forKey: .connectedSite)
        self.createdAt = try container.decodeIfPresent(Date.self, forKey: .createdAt)
        self.currencyCode = try container.decodeIfPresent(String.self, forKey: .currencyCode)
        self.domain = try container.decodeIfPresent(String.self, forKey: .domain)
        self.emailAddress = try container.decodeIfPresent(String.self, forKey: .emailAddress)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.isSyncing = try container.decodeIfPresent(Bool.self, forKey: .isSyncing)
        self.listId = try container.decodeIfPresent(String.self, forKey: .listId)
        self.listIsActive = try container.decodeIfPresent(Bool.self, forKey: .listIsActive)
        self.moneyFormat = try container.decodeIfPresent(String.self, forKey: .moneyFormat)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.phone = try container.decodeIfPresent(String.self, forKey: .phone)
        self.platform = try container.decodeIfPresent(String.self, forKey: .platform)
        self.primaryLocale = try container.decodeIfPresent(String.self, forKey: .primaryLocale)
        self.timezone = try container.decodeIfPresent(String.self, forKey: .timezone)
        self.updatedAt = try container.decodeIfPresent(Date.self, forKey: .updatedAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.address, forKey: .address)
        try container.encodeIfPresent(self.automations, forKey: .automations)
        try container.encodeIfPresent(self.connectedSite, forKey: .connectedSite)
        try container.encodeIfPresent(self.createdAt, forKey: .createdAt)
        try container.encodeIfPresent(self.currencyCode, forKey: .currencyCode)
        try container.encodeIfPresent(self.domain, forKey: .domain)
        try container.encodeIfPresent(self.emailAddress, forKey: .emailAddress)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.isSyncing, forKey: .isSyncing)
        try container.encodeIfPresent(self.listId, forKey: .listId)
        try container.encodeIfPresent(self.listIsActive, forKey: .listIsActive)
        try container.encodeIfPresent(self.moneyFormat, forKey: .moneyFormat)
        try container.encodeIfPresent(self.name, forKey: .name)
        try container.encodeIfPresent(self.phone, forKey: .phone)
        try container.encodeIfPresent(self.platform, forKey: .platform)
        try container.encodeIfPresent(self.primaryLocale, forKey: .primaryLocale)
        try container.encodeIfPresent(self.timezone, forKey: .timezone)
        try container.encodeIfPresent(self.updatedAt, forKey: .updatedAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case address
        case automations
        case connectedSite = "connected_site"
        case createdAt = "created_at"
        case currencyCode = "currency_code"
        case domain
        case emailAddress = "email_address"
        case id
        case isSyncing = "is_syncing"
        case listId = "list_id"
        case listIsActive = "list_is_active"
        case moneyFormat = "money_format"
        case name
        case phone
        case platform
        case primaryLocale = "primary_locale"
        case timezone
        case updatedAt = "updated_at"
    }
}