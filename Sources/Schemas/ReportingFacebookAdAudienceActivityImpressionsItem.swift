import Foundation

public struct ReportingFacebookAdAudienceActivityImpressionsItem: Codable, Hashable, Sendable {
    public let date: String?
    public let impressions: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        date: String? = nil,
        impressions: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.date = date
        self.impressions = impressions
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.date = try container.decodeIfPresent(String.self, forKey: .date)
        self.impressions = try container.decodeIfPresent(Int.self, forKey: .impressions)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.date, forKey: .date)
        try container.encodeIfPresent(self.impressions, forKey: .impressions)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case date
        case impressions
    }
}