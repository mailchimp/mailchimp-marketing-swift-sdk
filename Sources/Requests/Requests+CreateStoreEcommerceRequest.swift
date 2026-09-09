import Foundation

extension Requests {
    public struct CreateStoreEcommerceRequest: Codable, Hashable, Sendable {
        /// The store address.
        public let address: CreateStoreEcommerceRequestAddress?
        /// The three-letter ISO 4217 code for the currency that the store accepts.
        public let currencyCode: String
        /// The store domain. This parameter is required for Connected Sites and Google Ads.
        public let domain: String?
        /// The email address for the store.
        public let emailAddress: String?
        /// The unique identifier for the store.
        public let id: String
        /// Whether to disable automations because the store is currently [syncing](https://mailchimp.com/developer/marketing/docs/e-commerce/#pausing-store-automations).
        public let isSyncing: Bool?
        /// The unique identifier for the list associated with the store. The `list_id` for a specific store cannot change.
        public let listId: String
        /// The currency format for the store. For example: `$`, `£`, etc.
        public let moneyFormat: String?
        /// The name of the store.
        public let name: String
        /// The store phone number.
        public let phone: String?
        /// The e-commerce platform of the store.
        public let platform: String?
        /// The primary locale for the store. For example: `en`, `de`, etc.
        public let primaryLocale: String?
        /// The timezone for the store.
        public let timezone: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            address: CreateStoreEcommerceRequestAddress? = nil,
            currencyCode: String,
            domain: String? = nil,
            emailAddress: String? = nil,
            id: String,
            isSyncing: Bool? = nil,
            listId: String,
            moneyFormat: String? = nil,
            name: String,
            phone: String? = nil,
            platform: String? = nil,
            primaryLocale: String? = nil,
            timezone: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.address = address
            self.currencyCode = currencyCode
            self.domain = domain
            self.emailAddress = emailAddress
            self.id = id
            self.isSyncing = isSyncing
            self.listId = listId
            self.moneyFormat = moneyFormat
            self.name = name
            self.phone = phone
            self.platform = platform
            self.primaryLocale = primaryLocale
            self.timezone = timezone
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.address = try container.decodeIfPresent(CreateStoreEcommerceRequestAddress.self, forKey: .address)
            self.currencyCode = try container.decode(String.self, forKey: .currencyCode)
            self.domain = try container.decodeIfPresent(String.self, forKey: .domain)
            self.emailAddress = try container.decodeIfPresent(String.self, forKey: .emailAddress)
            self.id = try container.decode(String.self, forKey: .id)
            self.isSyncing = try container.decodeIfPresent(Bool.self, forKey: .isSyncing)
            self.listId = try container.decode(String.self, forKey: .listId)
            self.moneyFormat = try container.decodeIfPresent(String.self, forKey: .moneyFormat)
            self.name = try container.decode(String.self, forKey: .name)
            self.phone = try container.decodeIfPresent(String.self, forKey: .phone)
            self.platform = try container.decodeIfPresent(String.self, forKey: .platform)
            self.primaryLocale = try container.decodeIfPresent(String.self, forKey: .primaryLocale)
            self.timezone = try container.decodeIfPresent(String.self, forKey: .timezone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.address, forKey: .address)
            try container.encode(self.currencyCode, forKey: .currencyCode)
            try container.encodeIfPresent(self.domain, forKey: .domain)
            try container.encodeIfPresent(self.emailAddress, forKey: .emailAddress)
            try container.encode(self.id, forKey: .id)
            try container.encodeIfPresent(self.isSyncing, forKey: .isSyncing)
            try container.encode(self.listId, forKey: .listId)
            try container.encodeIfPresent(self.moneyFormat, forKey: .moneyFormat)
            try container.encode(self.name, forKey: .name)
            try container.encodeIfPresent(self.phone, forKey: .phone)
            try container.encodeIfPresent(self.platform, forKey: .platform)
            try container.encodeIfPresent(self.primaryLocale, forKey: .primaryLocale)
            try container.encodeIfPresent(self.timezone, forKey: .timezone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case address
            case currencyCode = "currency_code"
            case domain
            case emailAddress = "email_address"
            case id
            case isSyncing = "is_syncing"
            case listId = "list_id"
            case moneyFormat = "money_format"
            case name
            case phone
            case platform
            case primaryLocale = "primary_locale"
            case timezone
        }
    }
}