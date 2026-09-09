import Foundation

/// An individual click location.
public struct ListEepurlReportsResponseClicksLocationsItem: Codable, Hashable, Sendable {
    /// The two-digit country code for a recorded click.
    public let country: String?
    /// If available, a specific region where the click was recorded.
    public let region: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        country: String? = nil,
        region: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.country = country
        self.region = region
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.country = try container.decodeIfPresent(String.self, forKey: .country)
        self.region = try container.decodeIfPresent(String.self, forKey: .region)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.country, forKey: .country)
        try container.encodeIfPresent(self.region, forKey: .region)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case country
        case region
    }
}