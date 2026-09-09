import Foundation

public struct ListLocationsListsResponseLocationsItem: Codable, Hashable, Sendable {
    /// The ISO 3166 2 digit country code.
    public let cc: String?
    /// The name of the country.
    public let country: String?
    /// The percent of subscribers in the country.
    public let percent: Double?
    /// The total number of subscribers in the country.
    public let total: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        cc: String? = nil,
        country: String? = nil,
        percent: Double? = nil,
        total: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.cc = cc
        self.country = country
        self.percent = percent
        self.total = total
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.cc = try container.decodeIfPresent(String.self, forKey: .cc)
        self.country = try container.decodeIfPresent(String.self, forKey: .country)
        self.percent = try container.decodeIfPresent(Double.self, forKey: .percent)
        self.total = try container.decodeIfPresent(Int.self, forKey: .total)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.cc, forKey: .cc)
        try container.encodeIfPresent(self.country, forKey: .country)
        try container.encodeIfPresent(self.percent, forKey: .percent)
        try container.encodeIfPresent(self.total, forKey: .total)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case cc
        case country
        case percent
        case total
    }
}