import Foundation

/// The shipping address for the order.
public struct ECommerceOrderShippingAddress: Codable, Hashable, Sendable {
    /// The shipping address for the order.
    public let address1: String?
    /// An additional field for the shipping address.
    public let address2: String?
    /// The city in the order's shipping address.
    public let city: String?
    /// The company associated with an order's shipping address.
    public let company: String?
    /// The country in the order's shipping address.
    public let country: String?
    /// The two-letter code for the country in the shipping address.
    public let countryCode: String?
    /// The latitude for the shipping address location.
    public let latitude: Double?
    /// The longitude for the shipping address location.
    public let longitude: Double?
    /// The name associated with an order's shipping address.
    public let name: String?
    /// The phone number for the order's shipping address
    public let phone: String?
    /// The postal or zip code in the order's shipping address.
    public let postalCode: String?
    /// The state or normalized province in the order's shipping address.
    public let province: String?
    /// The two-letter code for the province or state the order's shipping address is located in.
    public let provinceCode: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        address1: String? = nil,
        address2: String? = nil,
        city: String? = nil,
        company: String? = nil,
        country: String? = nil,
        countryCode: String? = nil,
        latitude: Double? = nil,
        longitude: Double? = nil,
        name: String? = nil,
        phone: String? = nil,
        postalCode: String? = nil,
        province: String? = nil,
        provinceCode: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.address1 = address1
        self.address2 = address2
        self.city = city
        self.company = company
        self.country = country
        self.countryCode = countryCode
        self.latitude = latitude
        self.longitude = longitude
        self.name = name
        self.phone = phone
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
        self.company = try container.decodeIfPresent(String.self, forKey: .company)
        self.country = try container.decodeIfPresent(String.self, forKey: .country)
        self.countryCode = try container.decodeIfPresent(String.self, forKey: .countryCode)
        self.latitude = try container.decodeIfPresent(Double.self, forKey: .latitude)
        self.longitude = try container.decodeIfPresent(Double.self, forKey: .longitude)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.phone = try container.decodeIfPresent(String.self, forKey: .phone)
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
        try container.encodeIfPresent(self.company, forKey: .company)
        try container.encodeIfPresent(self.country, forKey: .country)
        try container.encodeIfPresent(self.countryCode, forKey: .countryCode)
        try container.encodeIfPresent(self.latitude, forKey: .latitude)
        try container.encodeIfPresent(self.longitude, forKey: .longitude)
        try container.encodeIfPresent(self.name, forKey: .name)
        try container.encodeIfPresent(self.phone, forKey: .phone)
        try container.encodeIfPresent(self.postalCode, forKey: .postalCode)
        try container.encodeIfPresent(self.province, forKey: .province)
        try container.encodeIfPresent(self.provinceCode, forKey: .provinceCode)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case address1
        case address2
        case city
        case company
        case country
        case countryCode = "country_code"
        case latitude
        case longitude
        case name
        case phone
        case postalCode = "postal_code"
        case province
        case provinceCode = "province_code"
    }
}