import Foundation

/// Information about the account contact.
public struct ListRootResponseContact: Codable, Hashable, Sendable {
    /// The street address for the account contact.
    public let addr1: String?
    /// The street address for the account contact.
    public let addr2: String?
    /// The city for the account contact.
    public let city: String?
    /// The company name for the account.
    public let company: String?
    /// The country for the account contact.
    public let country: String?
    /// The state for the account contact.
    public let state: String?
    /// The zip code for the account contact.
    public let zip: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        addr1: String? = nil,
        addr2: String? = nil,
        city: String? = nil,
        company: String? = nil,
        country: String? = nil,
        state: String? = nil,
        zip: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.addr1 = addr1
        self.addr2 = addr2
        self.city = city
        self.company = company
        self.country = country
        self.state = state
        self.zip = zip
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.addr1 = try container.decodeIfPresent(String.self, forKey: .addr1)
        self.addr2 = try container.decodeIfPresent(String.self, forKey: .addr2)
        self.city = try container.decodeIfPresent(String.self, forKey: .city)
        self.company = try container.decodeIfPresent(String.self, forKey: .company)
        self.country = try container.decodeIfPresent(String.self, forKey: .country)
        self.state = try container.decodeIfPresent(String.self, forKey: .state)
        self.zip = try container.decodeIfPresent(String.self, forKey: .zip)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.addr1, forKey: .addr1)
        try container.encodeIfPresent(self.addr2, forKey: .addr2)
        try container.encodeIfPresent(self.city, forKey: .city)
        try container.encodeIfPresent(self.company, forKey: .company)
        try container.encodeIfPresent(self.country, forKey: .country)
        try container.encodeIfPresent(self.state, forKey: .state)
        try container.encodeIfPresent(self.zip, forKey: .zip)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case addr1
        case addr2
        case city
        case company
        case country
        case state
        case zip
    }
}