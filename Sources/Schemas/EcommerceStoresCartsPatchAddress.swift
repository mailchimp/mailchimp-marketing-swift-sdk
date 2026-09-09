import Foundation

/// The customer's address.
public struct EcommerceStoresCartsPatchAddress: Codable, Hashable, Sendable {
    /// The mailing address of the customer.
    public let address1: String?
    /// An additional field for the customer's mailing address.
    public let address2: String?
    /// The city the customer is located in.
    public let city: String?
    /// The customer's country.
    public let country: String?
    /// The two-letter code for the customer's country.
    public let countryCode: String?
    /// The customer's postal or zip code.
    public let postalCode: String?
    /// The customer's state name or normalized province.
    public let province: String?
    /// The two-letter code for the customer's province or state.
    public let provinceCode: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        address1: String? = nil,
        address2: String? = nil,
        city: String? = nil,
        country: String? = nil,
        countryCode: String? = nil,
        postalCode: String? = nil,
        province: String? = nil,
        provinceCode: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.address1 = address1
        self.address2 = address2
        self.city = city
        self.country = country
        self.countryCode = countryCode
        self.postalCode = postalCode
        self.province = province
        self.provinceCode = provinceCode
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.address1 = try container.decodeIfPresent(String.self, forKey: .address1)
        self.address2 = try container.decodeIfPresent(String.self, forKey: .address2)
        self.city = try container.decodeIfPresent(String.self, forKey: .city)
        self.country = try container.decodeIfPresent(String.self, forKey: .country)
        self.countryCode = try container.decodeIfPresent(String.self, forKey: .countryCode)
        self.postalCode = try container.decodeIfPresent(String.self, forKey: .postalCode)
        self.province = try container.decodeIfPresent(String.self, forKey: .province)
        self.provinceCode = try container.decodeIfPresent(String.self, forKey: .provinceCode)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.address1, forKey: .address1)
        try container.encodeIfPresent(self.address2, forKey: .address2)
        try container.encodeIfPresent(self.city, forKey: .city)
        try container.encodeIfPresent(self.country, forKey: .country)
        try container.encodeIfPresent(self.countryCode, forKey: .countryCode)
        try container.encodeIfPresent(self.postalCode, forKey: .postalCode)
        try container.encodeIfPresent(self.province, forKey: .province)
        try container.encodeIfPresent(self.provinceCode, forKey: .provinceCode)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case address1
        case address2
        case city
        case country
        case countryCode = "country_code"
        case postalCode = "postal_code"
        case province
        case provinceCode = "province_code"
    }
}