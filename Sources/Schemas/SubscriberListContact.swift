import Foundation

/// [Contact information displayed in campaign footers](https://mailchimp.com/help/about-campaign-footers/) to comply with international spam laws.
public struct SubscriberListContact: Codable, Hashable, Sendable {
    /// The street address for the list contact.
    public let address1: String?
    /// The street address for the list contact.
    public let address2: String?
    /// The city for the list contact.
    public let city: String?
    /// The company name for the list.
    public let company: String?
    /// A two-character ISO3166 country code. Defaults to US if invalid.
    public let country: String?
    /// The phone number for the list contact.
    public let phone: String?
    /// The state for the list contact.
    public let state: String?
    /// The postal or zip code for the list contact.
    public let zip: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        address1: String? = nil,
        address2: String? = nil,
        city: String? = nil,
        company: String? = nil,
        country: String? = nil,
        phone: String? = nil,
        state: String? = nil,
        zip: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.address1 = address1
        self.address2 = address2
        self.city = city
        self.company = company
        self.country = country
        self.phone = phone
        self.state = state
        self.zip = zip
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.address1 = try container.decodeIfPresent(String.self, forKey: .address1)
        self.address2 = try container.decodeIfPresent(String.self, forKey: .address2)
        self.city = try container.decodeIfPresent(String.self, forKey: .city)
        self.company = try container.decodeIfPresent(String.self, forKey: .company)
        self.country = try container.decodeIfPresent(String.self, forKey: .country)
        self.phone = try container.decodeIfPresent(String.self, forKey: .phone)
        self.state = try container.decodeIfPresent(String.self, forKey: .state)
        self.zip = try container.decodeIfPresent(String.self, forKey: .zip)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.address1, forKey: .address1)
        try container.encodeIfPresent(self.address2, forKey: .address2)
        try container.encodeIfPresent(self.city, forKey: .city)
        try container.encodeIfPresent(self.company, forKey: .company)
        try container.encodeIfPresent(self.country, forKey: .country)
        try container.encodeIfPresent(self.phone, forKey: .phone)
        try container.encodeIfPresent(self.state, forKey: .state)
        try container.encodeIfPresent(self.zip, forKey: .zip)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case address1
        case address2
        case city
        case company
        case country
        case phone
        case state
        case zip
    }
}