import Foundation

public struct ReportingFacebookAdAudienceActivityClicksItem: Codable, Hashable, Sendable {
    public let clicks: Int?
    public let date: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        clicks: Int? = nil,
        date: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.clicks = clicks
        self.date = date
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.clicks = try container.decodeIfPresent(Int.self, forKey: .clicks)
        self.date = try container.decodeIfPresent(String.self, forKey: .date)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.clicks, forKey: .clicks)
        try container.encodeIfPresent(self.date, forKey: .date)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case clicks
        case date
    }
}