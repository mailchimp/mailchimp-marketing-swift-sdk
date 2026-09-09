import Foundation

public struct ReportingFacebookAdAudienceTargetingSpecsLocations: Codable, Hashable, Sendable {
    public let cities: [String]?
    public let countries: [String]?
    public let regions: [String]?
    public let zips: [String]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        cities: [String]? = nil,
        countries: [String]? = nil,
        regions: [String]? = nil,
        zips: [String]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.cities = cities
        self.countries = countries
        self.regions = regions
        self.zips = zips
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.cities = try container.decodeIfPresent([String].self, forKey: .cities)
        self.countries = try container.decodeIfPresent([String].self, forKey: .countries)
        self.regions = try container.decodeIfPresent([String].self, forKey: .regions)
        self.zips = try container.decodeIfPresent([String].self, forKey: .zips)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.cities, forKey: .cities)
        try container.encodeIfPresent(self.countries, forKey: .countries)
        try container.encodeIfPresent(self.regions, forKey: .regions)
        try container.encodeIfPresent(self.zips, forKey: .zips)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case cities
        case countries
        case regions
        case zips
    }
}