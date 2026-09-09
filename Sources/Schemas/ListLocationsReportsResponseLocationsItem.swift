import Foundation

public struct ListLocationsReportsResponseLocationsItem: Codable, Hashable, Sendable {
    /// The ISO 3166 2 digit country code.
    public let countryCode: String?
    /// The number of unique campaign opens for a region.
    public let opens: Int?
    /// The number of unique campaign opens for a region excluding opens from email clients that use proxies.
    public let proxyExcludedOpens: Int?
    /// An internal code for the region representing the more specific location area such as city or state. When this is blank, it indicates we know the country, but not the region.
    public let region: String?
    /// The name of the region, if we have one. For blank "region" values, this will be "Rest of Country".
    public let regionName: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        countryCode: String? = nil,
        opens: Int? = nil,
        proxyExcludedOpens: Int? = nil,
        region: String? = nil,
        regionName: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.countryCode = countryCode
        self.opens = opens
        self.proxyExcludedOpens = proxyExcludedOpens
        self.region = region
        self.regionName = regionName
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.countryCode = try container.decodeIfPresent(String.self, forKey: .countryCode)
        self.opens = try container.decodeIfPresent(Int.self, forKey: .opens)
        self.proxyExcludedOpens = try container.decodeIfPresent(Int.self, forKey: .proxyExcludedOpens)
        self.region = try container.decodeIfPresent(String.self, forKey: .region)
        self.regionName = try container.decodeIfPresent(String.self, forKey: .regionName)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.countryCode, forKey: .countryCode)
        try container.encodeIfPresent(self.opens, forKey: .opens)
        try container.encodeIfPresent(self.proxyExcludedOpens, forKey: .proxyExcludedOpens)
        try container.encodeIfPresent(self.region, forKey: .region)
        try container.encodeIfPresent(self.regionName, forKey: .regionName)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case countryCode = "country_code"
        case opens
        case proxyExcludedOpens = "proxy_excluded_opens"
        case region
        case regionName = "region_name"
    }
}